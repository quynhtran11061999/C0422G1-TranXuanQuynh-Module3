package service;

import model.Product;

import java.util.List;

public interface IProductService {
   List<Product> display();
    void add(Product product);
    void update();
    void delete();
    void viewProduct();
    void searchByName();
}
