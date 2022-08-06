package repository;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    public List<Customer> displayListCustomer();

    public void addCustomer(Customer customer) throws SQLException;

    public boolean editCustomer(Customer customer) throws SQLException;

    public boolean deleteCustomer(int id) throws SQLException;
}
