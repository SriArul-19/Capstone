package com.project.mediverse.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Order;


@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    // Find orders by customer
    List<Order> findByCustomer(Customer customer);

    // Find orders by payment status
    List<Order> findByPaymentStatus(String paymentStatus);

    // Find orders by insurance claim ID
    List<Order> findByInsuranceClaim(InsuranceClaim insuranceClaim);
}
