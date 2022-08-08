package repository.impl;

import model.CustomerType;
import repository.ICustomerTypeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "lepleplep116";

    private static final String DISPLAY_CUSTOMER_TYPE = "select * from loai_khach;";

    public CustomerTypeRepository(){
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
    public List<CustomerType> displayCustomerType() {
        List<CustomerType> customerTypes = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_CUSTOMER_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerTypeName = resultSet.getString("ten_loai_khach");
                customerTypes.add(new CustomerType(customerTypeId,customerTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypes;
    }
}
