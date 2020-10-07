package io.epf.onlyroom.user;

import io.epf.onlyroom.user.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 */
@Repository
public interface UserDAO extends CrudRepository<User, Long> {

}
