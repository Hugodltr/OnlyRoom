package io.epf.onlyroom.entity.room;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 *
 */
@Repository
public interface RoomDAO extends CrudRepository<Room, Long> {
    @Query("SELECT r FROM rooms r WHERE r.id NOT IN ( SELECT resa.room.id FROM reservations resa WHERE (resa.date = ?1 AND ((resa.beginHour >= ?2 AND resa.beginHour <= ?3) OR (resa.endHour >= ?2 AND resa.endHour <= ?3))))")
    List<Room> findFreeRoom(Date date, Integer beginHour, Integer endHour);

    @Query("SELECT r FROM rooms r INNER JOIN r.facilities f WHERE (r.capacity >= ?1 AND (r.id NOT IN ( SELECT resa.room.id FROM reservations resa WHERE (resa.date = ?2 AND ((resa.beginHour >= ?3 AND resa.beginHour <= ?4) OR (resa.endHour >= ?4 AND resa.endHour <= ?4))))))")
    List<Room> searchRoom(Integer capacity, Date date, Integer beginHour, Integer endHour);

    @Query("SELECT r FROM rooms r INNER JOIN r.facilities f WHERE (f.id IN ?5 AND r.capacity >= ?1 AND (r.id NOT IN ( SELECT resa.room.id FROM reservations resa WHERE (resa.date = ?2 AND ((resa.beginHour >= ?3 AND resa.beginHour <= ?4) OR (resa.endHour >= ?4 AND resa.endHour <= ?4)))))) GROUP BY r HAVING COUNT(DISTINCT f.id) = ?6")
    List<Room> searchRoomWithFacility(Integer capacity, Date date, Integer beginHour, Integer endHour, List<Long> facilitiesId, Long facilitiesCount);

    List<Room> findRoomByReservationsId(Long reservationId);
}
