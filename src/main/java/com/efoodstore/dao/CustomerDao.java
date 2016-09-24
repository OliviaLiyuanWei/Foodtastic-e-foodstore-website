package com.efoodstore.dao;

import com.efoodstore.model.Customer;

import java.util.List;

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}
