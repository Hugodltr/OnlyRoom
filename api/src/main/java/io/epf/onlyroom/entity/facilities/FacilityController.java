package io.epf.onlyroom.facilities;

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
    public List<Facility> getFacilities() {
        Iterable<Facility> it = this.facilityDAO.findAll();
        List<Facility> facilities = new ArrayList<>();
        it.forEach(facilities::add);

        return facilities;
    }

    @PostMapping()
    public Facility addFacility(@RequestBody Facility facility) {
        return this.facilityDAO.save(facility);
    }

    @DeleteMapping("/{id}")
    public void deleteFacility(@PathVariable Long id) {
        this.facilityDAO.deleteById(id);
    }

}

