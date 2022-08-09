package service;

import model.Customer;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ICustomerService {
    public List<Customer> displayListCustomer();

    public void addCustomer(Customer customer);

    public boolean editCustomer(Customer customer);

    public boolean deleteCustomer(int id);

    Customer searchById(int id);

    public Map<String, String> add(Customer customer);
}
