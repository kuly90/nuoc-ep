package com.chili.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Product properties
 * @author Ton Ly
 * @version 0.1
 * 2022.06
 *
 */
@Entity
@Table(name = "product")
public class Product implements Serializable  {
  private static final long serialVersionUID = 1L;
  @Id
  @Column(name = "PRODUCT_ID")
  private String productId;

  @Column(name = "PRODUCT_NAME")
  private String productName;

  @Column(name = "PRICE")
  private Integer price;
  
  @Column(name = "IMG_NAME")
  private String imgName;
  
  @Column(name = "TYPE")
  private String type;
  
  @Column(name = "QUANTITY")
  private Integer quantity;

  @Column(name = "LANGUAGE")
  private String language;

  @ManyToOne
  @JoinColumn(name = "CATEGORY_ID")
  private Category category;

  @OneToMany(mappedBy = "product")
  private List<Card> lstCard;

  public Integer getQuantity() {
    return quantity;
  }

  public List<Card> getLstCard() {
    return lstCard;
  }

  public void setLstCard(List<Card> lstCard) {
    this.lstCard = lstCard;
  }


  public void setQuantity(Integer quantity) {
    this.quantity = quantity;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getProductId() {
    return productId;
}

  public void setProductId(String productId) {
    this.productId = productId;
}

public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public Integer getPrice() {
    return price;
  }
  
  public void setPrice(Integer price) {
    this.price = price;
  }
  
  public String getImgName() {
    return imgName;
  }
  
  public void setImgName(String imgName) {
    this.imgName = imgName;
  }
  
  public Category getCategory() {
    return category;
  }
  
  public void setCategory(Category category) {
    this.category = category;
  }
  

  public String getLanguage() {
    return language;
  }

  public void setLanguage(String language) {
    this.language = language;
  }

  public String getPriceFormat() {
    String price = String.valueOf(this.price);
    String pr1 = price.substring(0, 2);
    String pr2 = price.substring(2, 5);
    StringBuilder stbPri = new StringBuilder();
    stbPri.append(pr1);
    stbPri.append(".");
    stbPri.append(pr2);
    return String.valueOf(stbPri);
  }

}
