package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.*;

public class ProductRepository implements IProductRepository {

    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "mì tôm", 3000, "không có", "hảo hảo"));
        productMap.put(2, new Product(2, "sữa", 5000, "không có", "milo"));
        productMap.put(3, new Product(3, "nước rửa chén", 10000, "không có", "clean"));
        productMap.put(4, new Product(4, "dầu gội", 2000, "không có", "x-men"));
        productMap.put(5, new Product(5, "sữa tắm", 15000, "không có", "dove"));
    }

    @Override
    public List<Product> display() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void add(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void delete(int id) {
        productMap.remove(id);
    }

    @Override
    public void viewProduct() {

    }

    @Override
    public Product searchById(int id) {
        return productMap.get(id);
    }


    @Override
    public List<Product> searchByName(String name) {
        List<Product> productList = new ArrayList<>(productMap.values());
        List<Product> products = new ArrayList<>();
        for (Product product : productList) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                products.add(product);
            }
        }
        return products;
    }
}
