package com.chili.common;

import java.util.ArrayList;
import java.util.List;

import com.chili.model.Product;

public class Common {

  /**
   * get product in slide
   * @param lstPro
   * @return listLstPro
   */
  public List<List<Product>> lstListPro(List<Product> lstPro) {
    // get list column
    List<List<Product>> listLstPro = new ArrayList<List<Product>>();
    // column of fresh fruit
    int proCol = lstPro.size() / 4;
    int surplus = lstPro.size() % 4;
    if (surplus > 0) {
    	proCol = proCol + 1;
    }

    // loop to get 4 item in a column
    for (int i = 0; i < proCol; i++) {
      List<Product> lstProduct = new ArrayList<Product>();
      for (int j = 0; j < 4 && i*4 + j < lstPro.size(); j++) {
    	  lstProduct.add(lstPro.get(i*4 + j));
      }
      listLstPro.add(lstProduct);
    }
    return listLstPro;
  }
}
