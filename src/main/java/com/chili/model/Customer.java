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
 * 
 * @author Ton Ly
 * @version 0.1
 *
 */
@Entity
@Table(name = "customer")
public class Customer implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "CUSTOMER_ID")
  private String customerId;

  @Column(name = "PHONE_NUMBER")
  private String phoneNumber;

  @Column(name = "CUSTOMER_NAME")
  private String customerName;

  @Column(name = "ADDRESS")
  private String address;

  @OneToMany(mappedBy = "customer")
  private List<Order> lstOrder;

  public String getCustomerId() {
    return customerId;
  }

  public void setCustomerId(String customerId) {
    this.customerId = customerId;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getCategoryId() {
    return phoneNumber;
  }

  public void setCategoryId(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getCustomerName() {
    return customerName;
  }

  public void setCustomerName(String customerName) {
    this.customerName = customerName;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public List<Order> getLstOrder() {
    return lstOrder;
  }

  public void setLstOrder(List<Order> lstOrder) {
    this.lstOrder = lstOrder;
  }

}
