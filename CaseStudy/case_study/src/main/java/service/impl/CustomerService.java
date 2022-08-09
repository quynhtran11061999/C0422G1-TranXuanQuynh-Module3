package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;
import service.ICustomerService;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> displayListCustomer() {
        return customerRepository.displayListCustomer();
    }

    @Override
    public void addCustomer(Customer customer) {
        customerRepository.addCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return customerRepository.editCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id){
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public Customer searchById(int id) {
        return customerRepository.searchById(id);
    }

    @Override
    public Map<String, String> add(Customer customer) {
        Map<String,String> mapErrors = new HashMap<>();
//        validat name
        if (!customer.getName().isEmpty()){
            if (!customer.getName().matches("^([A-Z][a-z])+( [A-Z][a-z]+)*$")){
                mapErrors.put("nameCustomer","Vui lòng nhập đúng định dạng!");
            }
        } else {
            mapErrors.put("nameCustomer","Vui lòng nhập tên!");
        }
//        validate birthday
        if (!customer.getBirthday().isEmpty()){
            try {
                LocalDate birthday = LocalDate.parse(customer.getBirthday());
            } catch (Exception e) {
                mapErrors.put("dateOfBirth","Vui lòng nhập đúng định dạng");
            }
        } else {
            mapErrors.put("dateOfBirth","Vui lòng nhập vào!");
        }
//        validate phone
        if (!customer.getPhoneNumber().isEmpty()){
            if (!customer.getPhoneNumber().matches("^((090)|(091)|(\\(84\\)\\+90)|(\\(84\\)\\+91))[0-9]{7}$")){
                mapErrors.put("phoneNumber","Vui lòng nhập đúng định dạng!");
            }
        }else{
            mapErrors.put("phoneNumber","Vui lòng nhập số điện thoại!");
        }
//        validate idCard
        if (!customer.getIdCard().isEmpty()){
            if (!customer.getIdCard().matches("^[0-9]{9}|[0-9]{12}$")){
                mapErrors.put("idCard","Vui lòng nhập đúng định dạng!");
            }
        }else {
            mapErrors.put("idCard","Vui lòng nhập số CMND");
        }
//        validate email
        if (!customer.getEmail().isEmpty()){
            if (!customer.getEmail().matches("^[a-z0-9]+@[a-z0-9]+\\\\.[a-z]+$")){
                mapErrors.put("email","Vui lòng nhập đúng định dạng!");
            }
        } else {
            mapErrors.put("email","Vui lòng nhập email");
        }

        if (mapErrors.size()==0){
            this.customerRepository.addCustomer(customer);
        }
        return mapErrors;
    }
}
