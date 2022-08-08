package repository.impl;

import model.Facility;
import repository.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "lepleplep116";

    private static final String DISPLAY_FACILITY = "SELECT * FROM dich_vu where trang_thai = 1;";

    public FacilityRepository(){
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
            while (resultSet.next()){
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
                facilityList.add(new Facility(facilityId,name,area,cost,maxPeople,rentTypeId,serviceTypeId
                        ,standardRoom,descriptionOfAmenities,poolArea,numberOfFloors,freeService));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void addFacility(Facility facility) {

    }
}
