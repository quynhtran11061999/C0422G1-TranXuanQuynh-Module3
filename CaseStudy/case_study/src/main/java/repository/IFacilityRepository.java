package repository;

import model.Customer;
import model.Facility;

import java.util.List;

public interface IFacilityRepository {
    public List<Facility> displayListFacility();

    public void addFacility(Facility facility);

    public boolean editFacility(Facility facility);

    public boolean deleteFacility(int id);

    Facility searchById(int id);
}
