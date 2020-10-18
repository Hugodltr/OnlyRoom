package io.epf.onlyroom.entity.reservation;

import io.epf.onlyroom.entity.room.Room;
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

    public ReservationController(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    @GetMapping()
    @PreAuthorize("hasRole('USER')")
    public List<Reservation> getReservations() {
        Iterable<Reservation> it = this.reservationDAO.findAll();
        List<Reservation> reservations = new ArrayList<>();
        it.forEach(reservations::add);

        return reservations;
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
    public void deleteReservation(@PathVariable Long id) {
        this.reservationDAO.deleteById(id);
    }

}
