package io.epf.onlyroom.entity.facilities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
public interface FacilityDAO extends CrudRepository<Facility, Long> {

}
