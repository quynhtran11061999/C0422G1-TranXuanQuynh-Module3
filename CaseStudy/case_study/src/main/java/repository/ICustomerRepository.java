package repository;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    public List<Customer> displayListCustomer();

    public void addCustomer(Customer customer);

    public boolean editCustomer(Customer customer);

    public boolean deleteCustomer(int id);

    Customer searchById(int id);
}
