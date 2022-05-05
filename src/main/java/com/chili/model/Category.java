package com.chili.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Category properties
 * @author Ton Ly
 * @version 0.1
 *
 */
@Entity
@Table(name = "category")
public class Category implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "CATEGORY_ID")
  private String categoryId;

  @Column(name = "CATEGORY_NAME")
  private String categoryName;

  @Column(name = "LANGUAGE")
  private String language;

  @OneToMany(mappedBy = "category")
  private List<Product> lstProduct;

  public List<Product> getLstProduct() {
  return lstProduct;
}

public void setLstProduct(List<Product> lstProduct) {
  this.lstProduct = lstProduct;
}

public String getCategoryId() {
      return categoryId;
  }

  public void setCategoryId(String categoryId) {
      this.categoryId = categoryId;
  }
  
  public String getCategoryName() {
      return categoryName;
  }
  
  public void setCategoryName(String categoryName) {
      this.categoryName = categoryName;
  }
  
  public String getLanguage() {
      return language;
  }
  
  public void setLanguage(String language) {
      this.language = language;
  }

}