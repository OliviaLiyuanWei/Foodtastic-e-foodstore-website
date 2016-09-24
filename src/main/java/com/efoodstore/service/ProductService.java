package com.efoodstore.service;

import com.efoodstore.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
