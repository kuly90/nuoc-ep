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
 * Category properties
 * 
 * @author Ton Ly
 * @version 0.1
 *
 */
@Entity
@Table(name = "order")
public class Order implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "ORDER_ID")
  private String orderId;

  @Column(name = "STATUS")
  private String status;

  @Column(name = "PRICE")
  private Integer price;

  @ManyToOne
  @JoinColumn(name = "CUSTOMER_ID")
  private Customer customer;

  @OneToMany(mappedBy = "order")
  private List<Cart> lstCard;

  public String getOrderId() {
    return orderId;
  }

  public void setOrderId(String orderId) {
    this.orderId = orderId;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Integer getPrice() {
    return price;
  }

  public void setPrice(Integer price) {
    this.price = price;
  }

  public Customer getCustomer() {
    return customer;
  }

  public void setCustomer(Customer customer) {
    this.customer = customer;
  }

  public List<Cart> getLstCard() {
    return lstCard;
  }

  public void setLstCard(List<Cart> lstCard) {
    this.lstCard = lstCard;
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
