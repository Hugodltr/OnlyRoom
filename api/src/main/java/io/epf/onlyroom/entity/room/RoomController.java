package io.epf.onlyroom.entity.room;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/rooms")
@CrossOrigin
public class RoomController {

    private final RoomDAO roomDAO;

    public RoomController(RoomDAO roomDAO) {
        this.roomDAO = roomDAO;
    }

    @GetMapping()
    @PreAuthorize("hasRole('USER')")
    public List<Room> getRooms() {
        Iterable<Room> it = this.roomDAO.findAll();
        List<Room> rooms = new ArrayList<>();
        it.forEach(rooms::add);

        return rooms;
    }

    @PostMapping()
    @PreAuthorize("hasRole('ADMIN')")
    public Room addRoom(@RequestBody Room room) {
        return this.roomDAO.save(room);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteRoom(@PathVariable Long id) {
        this.roomDAO.deleteById(id);
    }

}
