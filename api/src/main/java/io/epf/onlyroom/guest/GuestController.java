package io.epf.onlyroom.guest;

import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/guests")
@CrossOrigin
public class GuestController {

    private final GuestDAO guestDAO;

    public GuestController(GuestDAO guestDAO) {
        this.guestDAO = guestDAO;
    }

    @GetMapping()
    public List<Guest> getGuests() {
        Iterable<Guest> it = this.guestDAO.findAll();
        List<Guest> guests = new ArrayList<>();
        it.forEach(guests::add);

        return guests;
    }

    @PostMapping()
    public Guest addGuest(@RequestBody Guest room) {
        return this.guestDAO.save(room);
    }

    @DeleteMapping("/{id}")
    public void deleteGuest(@PathVariable Long id) {
        this.guestDAO.deleteById(id);
    }

}

