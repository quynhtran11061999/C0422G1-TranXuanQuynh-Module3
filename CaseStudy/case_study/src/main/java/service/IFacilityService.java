package service;

import model.Customer;
import model.Facility;

import java.util.List;

public interface IFacilityService {
    public List<Facility> displayListFacility();

    public void addFacility(Facility facility);

}
