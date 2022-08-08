package service.impl;

import model.Customer;
import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    IFacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public List<Facility> displayListFacility() {
        return facilityRepository.displayListFacility();
    }

    @Override
    public void addFacility(Facility facility) {
        facilityRepository.addFacility(facility);
    }

    @Override
    public boolean editFacility(Facility facility) {
        return facilityRepository.editFacility(facility);
    }

    @Override
    public boolean deleteFacility(int id) {
        return false;
    }

    @Override
    public Facility searchById(int id) {
        return facilityRepository.searchById(id);
    }
}
