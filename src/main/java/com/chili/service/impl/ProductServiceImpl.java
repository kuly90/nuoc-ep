package com.chili.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chili.model.Product;
import com.chili.repository.ProductRepository;
import com.chili.service.ProductService;

/**
 * Product process
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
@Service
public class ProductServiceImpl implements ProductService {

  /* declare product repository */
  @Autowired
  ProductRepository productRepo;

  /**
   * get product by id
   * @param productId
   * @param lang
   * @return Product
   */
  @Override
  public Product getProductById(String productId, String lang) {

    return productRepo.findByProductIdAndLanguage(productId, lang);
  }
}
