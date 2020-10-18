package io.epf.onlyroom.entity.reservation;

import io.epf.onlyroom.entity.room.Room;
import io.epf.onlyroom.entity.room.RoomDAO;
import io.epf.onlyroom.payload.response.MessageResponse;
import io.epf.onlyroom.security.services.UserDetailsImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/reservations")
@CrossOrigin
public class ReservationController {

    private final ReservationDAO reservationDAO;
    private final RoomDAO roomDAO;

    public ReservationController(ReservationDAO reservationDAO, RoomDAO roomDAO) {
        this.reservationDAO = reservationDAO;
        this.roomDAO = roomDAO;
    }

    @GetMapping()
    @PreAuthorize("hasRole('USER')")
    public List<ResaWithRoom> getReservations(Authentication authentication) {
        List<Reservation> reservations = this.reservationDAO.findByUserId(((UserDetailsImpl)authentication.getPrincipal()).getId());
        List<ResaWithRoom> resa = new ArrayList<>();
        for (Reservation reservation : reservations) {
            resa.add(new ResaWithRoom(reservation, reservation.getRoom()));
        }
        return resa;
    }

    @PostMapping()
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<MessageResponse> addReservation(@RequestBody Reservation reservation, Authentication authentication) {
        if(reservation.getUser().getId() != ((UserDetailsImpl)authentication.getPrincipal()).getId()) {
            return ResponseEntity
                    .badRequest()
                    .body(new MessageResponse("Error: user not authorized!"));
        } else {
            List<Reservation> currentReservations = this.reservationDAO.currentReservations(reservation.getDate(), reservation.getBeginHour(), reservation.getEndHour(), reservation.getRoom().getId());

            if(currentReservations.isEmpty()) {
                return new ResponseEntity(this.reservationDAO.save(reservation), HttpStatus.OK);
            } else {
                return ResponseEntity
                        .badRequest()
                        .body(new MessageResponse("Error: room already booked!"));
            }

        }
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<MessageResponse> deleteReservation(@PathVariable Long id, Authentication authentication) {
        if(this.reservationDAO.findById(id).get().getUser().getId() != ((UserDetailsImpl)authentication.getPrincipal()).getId()) {
            return ResponseEntity
                    .badRequest()
                    .body(new MessageResponse("Error: user not authorized!"));
        } else {
            this.reservationDAO.deleteById(id);
            return new ResponseEntity("Reservation deleted", HttpStatus.OK);
        }

    }

}

class ResaWithRoom<Reservation, Room> {
    public final Reservation reservation;
    public final Room room;


    ResaWithRoom(Reservation reservation, Room room) {
        this.reservation = reservation;
        this.room = room;
    }
}
