package service.impl;

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

    }
}
