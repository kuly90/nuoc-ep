package com.chili.service;

import com.chili.model.Product;

public interface ProductService {

  /**
   * get product by id
   * @param productId
   * @param lang
   * @return Product
   */
  public Product getProductById(String productId, String lang);
}
