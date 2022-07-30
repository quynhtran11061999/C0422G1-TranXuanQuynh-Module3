package service.Impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> display() {
        return productRepository.display();
    }

    @Override
    public void add(Product product) {
        productRepository.add(product);
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
