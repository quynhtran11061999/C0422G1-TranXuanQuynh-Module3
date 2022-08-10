package service.impl;

import model.Customer;
import model.Facility;
import model.FacilityType;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        return facilityRepository.deleteFacility(id);
    }

    @Override
    public Facility searchById(int id) {
        return facilityRepository.searchById(id);
    }

    @Override
    public List<FacilityType> listFacilityType() {
        return facilityRepository.listFacilityType();
    }

    @Override
    public Map<String, String> add(Facility facility) {
        Map<String,String> mapErrors = new HashMap<>();
//        validat name
        if (!facility.getName().isEmpty()){
            if (!facility.getName().matches("^([A-Z][a-z]+)+( [A-Z][a-z]+)*$")){
                mapErrors.put("name","Vui lòng nhập đúng định dạng!");
            }
        } else {
            mapErrors.put("name","Vui lòng nhập tên!");
        }
//        validate numberOfFloors
        if (facility.getNumberOfFloors() < 0){
            mapErrors.put("numberOfFloors", "Vui lòng nhập đúng định dạng!");
        }

//        validate area
        if (facility.getArea() < 0){
            mapErrors.put("area", "Vui lòng nhập đúng định dạng!");
        }
//        validate cost
        if (facility.getCost() < 0){
            mapErrors.put("cost", "Vui lòng nhập đúng định dạng!");
        }


        if (mapErrors.size()==0){
            this.facilityRepository.addFacility(facility);
        }
        return mapErrors;
    }
}
