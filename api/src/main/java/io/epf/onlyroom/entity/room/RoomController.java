package io.epf.onlyroom.entity.room;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/rooms")
@CrossOrigin
public class RoomController {

    private final RoomDAO roomDAO;

    public RoomController(RoomDAO roomDAO) {
        this.roomDAO = roomDAO;
    }

    @GetMapping("/free")
    @PreAuthorize("hasRole('USER')")
    public List<Room> getFreeRooms(@RequestParam String date, @RequestParam Integer beginHour, @RequestParam Integer endHour) {
        return this.roomDAO.findFreeRoom(Date.from(LocalDate.parse(date).atStartOfDay(ZoneId.systemDefault()).toInstant()), beginHour, endHour);
    }

    @GetMapping("/search")
    @PreAuthorize("hasRole('USER')")
    public List<Room> searchRoom(@RequestParam Integer capacity, @RequestParam String date, @RequestParam Integer beginHour, @RequestParam Integer endHour, @RequestParam List<Long> facilitiesId) {
        List<Room> rooms;

        if(facilitiesId.size() == 0) {
            rooms = this.roomDAO.searchRoom(capacity, Date.from(LocalDate.parse(date).atStartOfDay(ZoneId.systemDefault()).toInstant()), beginHour, endHour);
        } else {
            rooms = this.roomDAO.searchRoomWithFacility(capacity, Date.from(LocalDate.parse(date).atStartOfDay(ZoneId.systemDefault()).toInstant()), beginHour, endHour, facilitiesId, (long) facilitiesId.size());
        }

        return rooms;
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
