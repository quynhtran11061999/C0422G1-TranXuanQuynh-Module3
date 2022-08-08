package repository.impl;

import model.Customer;
import repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama";
    private String jdbcUsername = "root";
    private String jdbcPassword = "lepleplep116";

    private static final String DISPLAY_CUSTOMER = "SELECT * FROM khach_hang where trang_thai = 1;";
    private static final String ADD_CUSTOMER = "insert into khach_hang (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) values (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String EDIT_CUSTOMER = "update khach_hang set ma_loai_khach=?, ho_ten=?, ngay_sinh=?, gioi_tinh=?, so_cmnd=?, so_dien_thoai=?, email=?, dia_chi=? where ma_khach_hang=?;";
    private static final String SEARCH_BY_ID = "select * from khach_hang where ma_khach_hang = ?;";
    private static final String DELETE_CUSTOMER = "update khach_hang set trang_thai = 0 where ma_khach_hang = ?;";



    public CustomerRepository() {
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
    public List<Customer> displayListCustomer() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_CUSTOMER);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String birthday = resultSet.getString("ngay_sinh");
                int gender = resultSet.getInt("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customers.add(new Customer(customerId, customerTypeId, name, birthday, gender, idCard, phoneNumber, email, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthday());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhoneNumber());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean editCustomer(Customer customer) {
        boolean rowEdit = false;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerTypeId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getBirthday());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, String.valueOf(customer.getPhoneNumber()));
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9,customer.getIdCustomer());
            rowEdit = preparedStatement.executeUpdate()>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowEdit;
    }

    @Override
    public boolean deleteCustomer(int id) {
        int check;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER);
            preparedStatement.setInt(1,id);
            check = preparedStatement.executeUpdate();
            return check>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Customer searchById(int id) {
        Customer customer = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt(1);
                int customerTypeId = resultSet.getInt(2);
                String name = resultSet.getString(3);
                String birthday = resultSet.getString(4);
                int gender = resultSet.getInt(5);
                String idCard = resultSet.getString(6);
                String phoneNumber = resultSet.getString(7);
                String email = resultSet.getString(8);
                String address = resultSet.getString(9);
                customer = new Customer(customerId, customerTypeId, name, birthday, gender, idCard, phoneNumber, email, address);
            }
            } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }
}
