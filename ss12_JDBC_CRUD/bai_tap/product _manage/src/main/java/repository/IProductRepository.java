package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> display();

    void add(Product product);

    void update(int id, Product product);

    void delete(int id);

    void viewProduct();

    Product searchById(int id);

    List<Product> searchByName(String name);
}
