package repository;

import model.Facility;

import java.util.List;

public interface IFacilityRepository {
    public List<Facility> displayListFacility();

    public void addFacility(Facility facility);
}
