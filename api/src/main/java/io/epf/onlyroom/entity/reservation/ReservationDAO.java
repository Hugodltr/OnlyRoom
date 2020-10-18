package io.epf.onlyroom.entity.reservation;

import io.epf.onlyroom.entity.room.Room;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 *
 */
@Repository
public interface ReservationDAO extends CrudRepository<Reservation, Long> {
    @Query("SELECT resa FROM reservations resa WHERE (resa.date = ?1 AND resa.room.id = ?4 AND ((resa.beginHour >= ?2 AND resa.beginHour <= ?3) OR (resa.endHour >= ?2 AND resa.endHour <= ?3)))")
    List<Reservation> currentReservations(Date date, Integer beginHour, Integer endHour, Long roomId);

    List<Reservation> findByUserId(Long userId);
}
