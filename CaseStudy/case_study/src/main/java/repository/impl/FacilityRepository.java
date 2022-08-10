package repository.impl;

import model.Customer;
import model.Facility;
import model.FacilityType;
import repository.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "lepleplep116";

    private static final String DISPLAY_FACILITY = "SELECT * FROM furama.dich_vu" +
            " join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu" +
            " join kieu_thue on kieu_thue.ma_kieu_thue = dich_vu.ma_kieu_thue" +
            " where trang_thai = 1;";
    private static final String ADD_FACILITY = "insert into dich_vu (ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,ma_kieu_thue" +
            ",ma_loai_dich_vu,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem) " +
            "values (?,?,?,?,?,?,?,?,?,?,?);";
    private static final String EDIT_FACILITY = "update furama.dich_vu set ten_dich_vu = ? , dien_tich = ?, chi_phi_thue = ?, so_nguoi_toi_da = ?, ma_kieu_thue = ?," +
            " ma_loai_dich_vu = ?,tieu_chuan_phong = ?, mo_ta_tien_nghi_khac = ?,dien_tich_ho_boi = ?, so_tang = ?,dich_vu_mien_phi_di_kem = ? where ma_dich_vu = ?;";
    private static final String SEARCH_BY_ID_FACILITY = "select * from dich_vu where ma_dich_vu = ?;";
    private static final String SELECT_FACILITY_TYPE = "SELECT * FROM furama.loai_dich_vu;";
    private static final String DELETE_FACILITY = "update dich_vu set trang_thai = 0 where ma_dich_vu = ?;";


    public FacilityRepository() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Facility> displayListFacility() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_FACILITY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int facilityId = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String descriptionOfAmenities = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberOfFloors = resultSet.getInt("so_tang");
                String freeService = resultSet.getString("dich_vu_mien_phi_di_kem");
                String serviceTypeName = resultSet.getString("ten_loai_dich_vu");
                String rentalTypeName = resultSet.getString("ten_kieu_thue");
                facilityList.add(new Facility(facilityId, name, area, cost, maxPeople,standardRoom, descriptionOfAmenities, poolArea, numberOfFloors, freeService,rentalTypeName,serviceTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void addFacility(Facility facility) {
        Connection connection =getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_FACILITY);
            preparedStatement.setString(1, facility.getName());
            preparedStatement.setInt(2,facility.getArea());
            preparedStatement.setDouble(3, facility.getCost());
            preparedStatement.setInt(4, facility.getMaxPeople());
            preparedStatement.setInt(5, facility.getRentTypeId());
            preparedStatement.setInt(6, facility.getServiceTypeId());
            preparedStatement.setString(7, facility.getStandardRoom());
            preparedStatement.setString(8, facility.getDescriptionOfAmenities());
            preparedStatement.setDouble(9, facility.getPoolArea());
            preparedStatement.setInt(10, facility.getNumberOfFloors());
            preparedStatement.setString(11, facility.getFreeService());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean editFacility(Facility facility) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_FACILITY);
            preparedStatement.setString(1, facility.getName());
            preparedStatement.setInt(2,facility.getArea());
            preparedStatement.setDouble(3, facility.getCost());
            preparedStatement.setInt(4, facility.getMaxPeople());
            preparedStatement.setInt(5, facility.getRentTypeId());
            preparedStatement.setInt(6, facility.getServiceTypeId());
            preparedStatement.setString(7, facility.getStandardRoom());
            preparedStatement.setString(8, facility.getDescriptionOfAmenities());
            preparedStatement.setDouble(9, facility.getPoolArea());
            preparedStatement.setInt(10, facility.getNumberOfFloors());
            preparedStatement.setString(11, facility.getFreeService());
            preparedStatement.setInt(12,facility.getIdService());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteFacility(int id) {
        int check;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_FACILITY);
            preparedStatement.setInt(1,id);
            check = preparedStatement.executeUpdate();
            return check>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Facility searchById(int id) {
        Facility facility = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BY_ID_FACILITY);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int facilityId = resultSet.getInt(1);
                String name = resultSet.getString(2);
                int area = resultSet.getInt(3);
                double cost = resultSet.getDouble(4);
                int maxPeople = resultSet.getInt(5);
                int rentTypeId = resultSet.getInt(6);
                int serviceTypeId = resultSet.getInt(7);
                String standardRoom = resultSet.getString(8);
                String descriptionOfAmenities = resultSet.getString(9);
                double poolArea = resultSet.getDouble(10);
                int numberOfFloors = resultSet.getInt(11);
                String freeService = resultSet.getString(12);
                facility = new Facility(facilityId,name,area,cost,maxPeople,rentTypeId,
                        serviceTypeId,standardRoom,descriptionOfAmenities,poolArea,numberOfFloors,freeService);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return facility;
    }

    @Override
    public List<FacilityType> listFacilityType() {
        List<FacilityType> facilityTypes = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FACILITY_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                String facilityTypeName = resultSet.getString("ten_loai_dich_vu");
                facilityTypes.add(new FacilityType(facilityTypeId,facilityTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityTypes;
    }
}
