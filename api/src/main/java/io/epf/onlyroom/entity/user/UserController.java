package io.epf.onlyroom.entity.user;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/users")
@CrossOrigin
public class UserController {

    private final UserDAO userDAO;

    public UserController(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @GetMapping()
    @PreAuthorize("hasRole('ADMIN')")
    public List<User> getUsers() {
        Iterable<User> it = this.userDAO.findAll();
        List<User> users = new ArrayList<>();
        it.forEach(users::add);

        return users;
    }

    @PostMapping()
    @PreAuthorize("hasRole('ADMIN')")
    public User addUser(@RequestBody User user) {
        return this.userDAO.save(user);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteUser(@PathVariable Long id) {
        this.userDAO.deleteById(id);
    }

}
