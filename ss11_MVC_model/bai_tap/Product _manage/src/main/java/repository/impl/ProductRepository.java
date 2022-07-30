package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "mì tôm", 3000, "không có", "hảo hảo"));
        productList.add(new Product(2, "sữa", 5000, "không có", "milo"));
        productList.add(new Product(3, "nước rửa chén", 10000, "không có", "clean"));
        productList.add(new Product(4, "dầu gội", 2000, "không có", "x-men"));
        productList.add(new Product(5, "sữa tắm", 15000, "không có", "dove"));
    }

    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public void update() {

    }

    @Override
    public void delete() {

    }

    @Override
    public void viewProduct() {

    }

    @Override
    public void searchByName() {

    }
}
