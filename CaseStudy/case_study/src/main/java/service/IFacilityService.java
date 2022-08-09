package service;


import model.Facility;
import model.FacilityType;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    public List<Facility> displayListFacility();

    public void addFacility(Facility facility);

    public boolean editFacility(Facility facility);

    public boolean deleteFacility(int id);

    Facility searchById(int id);

    List<FacilityType> listFacilityType();

    public Map<String, String> add(Facility facility);
}
