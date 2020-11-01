package io.epf.onlyroom.entity.reservation;

import io.epf.onlyroom.entity.room.Room;
import io.epf.onlyroom.entity.room.RoomDAO;
import io.epf.onlyroom.entity.user.User;
import io.epf.onlyroom.entity.user.UserDAO;
import io.epf.onlyroom.payload.response.MessageResponse;
import io.epf.onlyroom.security.services.UserDetailsImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Async;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/reservations")
@CrossOrigin
public class ReservationController {

    private final ReservationDAO reservationDAO;
    private final RoomDAO roomDAO;
    private final UserDAO userDAO;

    public ReservationController(ReservationDAO reservationDAO, RoomDAO roomDAO, UserDAO userDAO) {
        this.reservationDAO = reservationDAO;
        this.roomDAO = roomDAO;
        this.userDAO = userDAO;
    }

    @GetMapping("/{id}")
    public ResponseEntity<MessageResponse> findById(@PathVariable Long id) {
        Optional<Reservation> optReservation = this.reservationDAO.findById(id);

        // Check if reservation exist
        if(optReservation.isPresent()) {
            Reservation reservation = optReservation.get();
            ResaWithRoom resa = new ResaWithRoom(reservation, reservation.getRoom(), reservation.getGuests());
            return new ResponseEntity(resa, HttpStatus.OK);
        } else {
            return ResponseEntity
                    .badRequest()
                    .body(new MessageResponse("Error: reservation not found"));
        }
    }

    @GetMapping()
    @PreAuthorize("hasRole('USER')")
    public List<ResaWithRoom> getReservations(Authentication authentication) {
        List<Reservation> reservations = this.reservationDAO.findByUserId(((UserDetailsImpl)authentication.getPrincipal()).getId());
        List<ResaWithRoom> resa = new ArrayList<>();
        for (Reservation reservation : reservations) {
            resa.add(new ResaWithRoom(reservation, reservation.getRoom(), reservation.getGuests()));
        }
        return resa;
    }

    @GetMapping("/guest")
    @PreAuthorize("hasRole('USER')")
    public List<ResaWithRoom> getReservationsGuest(Authentication authentication) {
        List<Reservation> reservations = this.userDAO.findById(((UserDetailsImpl)authentication.getPrincipal()).getId()).get().getGuests();
        List<ResaWithRoom> resa = new ArrayList<>();
        for (Reservation reservation : reservations) {
            resa.add(new ResaWithRoom(reservation, reservation.getRoom(), reservation.getGuests()));
        }
        return resa;
    }

    @PostMapping()
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<MessageResponse> addReservation(@RequestBody Reservation reservation, Authentication authentication) {
        Optional<Reservation> optResa = null;

        if(reservation.getId() != null) {
            optResa = this.reservationDAO.findById(reservation.getId());
        }

        // Check if reservation exist
        if(optResa != null && optResa.isPresent()) {
            // Check if user that modifies the reservation is the owner of the reservation
            if(optResa.get().getUser().getId() != ((UserDetailsImpl)authentication.getPrincipal()).getId()) {
                return ResponseEntity
                        .badRequest()
                        .body(new MessageResponse("Error: user not authorized!"));
            } else {
                List<User> guests = reservation.getGuests();
                guests.forEach(guest -> {
                    List<Reservation> resa = guest.getGuests();
                    resa.add(reservation);
                    guest.setGuests(resa);
                    this.userDAO.save(guest);
                });
                return new ResponseEntity(this.reservationDAO.save(reservation), HttpStatus.OK);
            }
        } else {
            // Check if user that modifies the reservation is the owner of the reservation
            if(reservation.getUser().getId() != ((UserDetailsImpl)authentication.getPrincipal()).getId()) {
                return ResponseEntity
                        .badRequest()
                        .body(new MessageResponse("Error: user not authorized!"));
            } else {
                List<Reservation> currentReservations = this.reservationDAO.currentReservations(reservation.getDate(), reservation.getBeginHour(), reservation.getEndHour(), reservation.getRoom().getId());

                // Check if the room is already booked
                if(currentReservations.isEmpty()) {
                    return new ResponseEntity(this.reservationDAO.save(reservation), HttpStatus.OK);
                } else {
                    return ResponseEntity
                            .badRequest()
                            .body(new MessageResponse("Error: room already booked!"));
                }
            }
        }
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<MessageResponse> deleteReservation(@PathVariable Long id, Authentication authentication) {
        /*Optional<Reservation> optReservation = this.reservationDAO.findById(id);
        if(optReservation.isPresent()) {
            Reservation reservation = optReservation.get();

            if(reservation.getUser().getId() != ((UserDetailsImpl)authentication.getPrincipal()).getId()) {
                return ResponseEntity
                        .badRequest()
                        .body(new MessageResponse("Error: user not authorized!"));
            } else {*/
                this.reservationDAO.deleteById(id);
                return new ResponseEntity(id, HttpStatus.OK);/*
            }
        } else {
            return ResponseEntity
                    .badRequest()
                    .body(new MessageResponse("Error: id not found"));
        }*/
    }

}

class ResaWithRoom<Reservation, Room> {
    public final Reservation reservation;
    public final Room room;
    public final List<User> guests;


    ResaWithRoom(Reservation reservation, Room room, List<User> guests) {
        this.reservation = reservation;
        this.room = room;
        this.guests = guests;
    }
}
