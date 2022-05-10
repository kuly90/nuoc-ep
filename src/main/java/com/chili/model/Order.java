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

}
