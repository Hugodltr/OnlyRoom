package io.epf.onlyroom.entity.facilities;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/facilities")
@CrossOrigin
public class FacilityController {

    private final FacilityDAO facilityDAO;

    public FacilityController(FacilityDAO facilityDAO) {
        this.facilityDAO = facilityDAO;
    }

    @GetMapping()
    @PreAuthorize("hasRole('USER')")
    public List<Facility> getFacilities() {
        Iterable<Facility> it = this.facilityDAO.findAll();
        List<Facility> facilities = new ArrayList<>();
        it.forEach(facilities::add);

        return facilities;
    }

    @PostMapping()
    @PreAuthorize("hasRole('ADMIN')")
    public Facility addFacility(@RequestBody Facility facility) {
        return this.facilityDAO.save(facility);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteFacility(@PathVariable Long id) {
        this.facilityDAO.deleteById(id);
    }

}

