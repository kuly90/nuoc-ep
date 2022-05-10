package com.chili.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Product properties
 * 
 * @author Ton Ly
 * @version 0.1 2022.06
 *
 */
@Entity
@Table(name = "cart")
public class Cart implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "CART_ID")
  private String cartId;

  @Column(name = "PRICE")
  private Integer price;

  @ManyToOne
  @JoinColumn(name = "ORDER_ID")
  private Order order;

  @ManyToOne
  @JoinColumn(name = "PRODUCT_ID")
  private Product product;

  public String getCartId() {
    return cartId;
  }

  public void setCartId(String cartId) {
    this.cartId = cartId;
  }

  public Integer getPrice() {
    return price;
  }

  public void setPrice(Integer price) {
    this.price = price;
  }

  public Order getOrder() {
    return order;
  }

  public void setOrder(Order order) {
    this.order = order;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }
  public String getPriceFormat() {
    String price = String.valueOf(this.price);
    StringBuilder stbPri = new StringBuilder();
    if (price.length() == 5) {
      String pr1 = price.substring(0, 2);
      String pr2 = price.substring(2, 5);
      stbPri.append(pr1);
      stbPri.append(".");
      stbPri.append(pr2);
    } else if (price.length() == 6) {
      String pr1 = price.substring(0, 3);
      String pr2 = price.substring(3, 6);
      stbPri.append(pr1);
      stbPri.append(".");
      stbPri.append(pr2);
    } else if (price.length() == 7) {
      String pr1 = price.substring(0, 1);
      String pr2 = price.substring(1, 4);
      String pr3 = price.substring(4, 7);
      stbPri.append(pr1);
      stbPri.append(".");
      stbPri.append(pr2);
      stbPri.append(".");
      stbPri.append(pr3);
      } 
    
    return String.valueOf(stbPri);
  }

}
