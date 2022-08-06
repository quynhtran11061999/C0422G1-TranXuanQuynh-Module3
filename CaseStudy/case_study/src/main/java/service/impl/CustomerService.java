package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> displayListCustomer() {
        return customerRepository.displayListCustomer();
    }

    @Override
    public void addCustomer(Customer customer) throws SQLException {
        customerRepository.addCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return false;
    }
}
