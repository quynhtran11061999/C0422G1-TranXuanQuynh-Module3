package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> display();
    void add(Product product);
    void update();
    void delete();
    void viewProduct();
    void searchByName();
}
