package com.chili.repository;

import org.springframework.data.repository.CrudRepository;

import com.chili.model.Product;

/**
 * Product process
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
public interface ProductRepository extends CrudRepository<Product, String> {

  Product findByProductIdAndLanguage(String productId, String lang);
}
