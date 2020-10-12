package io.epf.onlyroom.entity.guest;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
public interface GuestDAO extends CrudRepository<Guest, Long> {

}
