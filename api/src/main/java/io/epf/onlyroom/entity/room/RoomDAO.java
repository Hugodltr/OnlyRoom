package io.epf.onlyroom.entity.room;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
public interface RoomDAO extends CrudRepository<Room, Long> {

}
