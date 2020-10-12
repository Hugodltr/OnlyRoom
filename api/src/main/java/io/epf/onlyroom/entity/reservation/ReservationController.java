package io.epf.onlyroom.entity.reservation;

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
    public List<Reservation> getReservations() {
        Iterable<Reservation> it = this.reservationDAO.findAll();
        List<Reservation> reservations = new ArrayList<>();
        it.forEach(reservations::add);

        return reservations;
    }

    @PostMapping()
    public Reservation addReservation(@RequestBody Reservation reservation) {
        return this.reservationDAO.save(reservation);
    }

    @DeleteMapping("/{id}")
    public void deleteReservation(@PathVariable Long id) {
        this.reservationDAO.deleteById(id);
    }

}
