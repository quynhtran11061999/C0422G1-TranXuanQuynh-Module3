package model;

public class Facility {
    private int idService;
    private String name;
    private int area;
    private double cost;
    private int maxPeople;
    private int rentTypeId;
    private int serviceTypeId;
    private String standardRoom;
    private String descriptionOfAmenities;
    private double poolArea;
    private int numberOfFloors;
    private String freeService;
    private String serviceTypeName;
    private String rentalTypeName;

    public Facility() {
    }

    public Facility(int idService, String name, int area, double cost, int maxPeople, int rentTypeId, int serviceTypeId, String standardRoom, String descriptionOfAmenities, double poolArea, int numberOfFloors, String freeService) {
        this.idService = idService;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.serviceTypeId = serviceTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOfAmenities = descriptionOfAmenities;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.freeService = freeService;
    }

    public Facility(String name, int area, double cost, int maxPeople, int rentTypeId, int serviceTypeId, String standardRoom, String descriptionOfAmenities, double poolArea, int numberOfFloors, String freeService) {
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.serviceTypeId = serviceTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOfAmenities = descriptionOfAmenities;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.freeService = freeService;
    }

    public Facility(int idService, String name, int area, double cost, int maxPeople, String standardRoom, String descriptionOfAmenities, double poolArea, int numberOfFloors, String freeService, String serviceTypeName, String rentalTypeName) {
        this.idService = idService;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.standardRoom = standardRoom;
        this.descriptionOfAmenities = descriptionOfAmenities;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.freeService = freeService;
        this.serviceTypeName = serviceTypeName;
        this.rentalTypeName = rentalTypeName;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public int getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(int rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public int getServiceTypeId() {
        return serviceTypeId;
    }

    public void setServiceTypeId(int serviceTypeId) {
        this.serviceTypeId = serviceTypeId;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOfAmenities() {
        return descriptionOfAmenities;
    }

    public void setDescriptionOfAmenities(String descriptionOfAmenities) {
        this.descriptionOfAmenities = descriptionOfAmenities;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    public String getFreeService() {
        return freeService;
    }

    public void setFreeService(String freeService) {
        this.freeService = freeService;
    }

    public String getServiceTypeName() {
        return serviceTypeName;
    }

    public void setServiceTypeName(String serviceTypeName) {
        this.serviceTypeName = serviceTypeName;
    }

    public String getRentalTypeName() {
        return rentalTypeName;
    }

    public void setRentalTypeName(String rentalTypeName) {
        this.rentalTypeName = rentalTypeName;
    }
}
