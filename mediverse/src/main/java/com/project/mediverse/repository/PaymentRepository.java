package com.project.mediverse.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.mediverse.entity.Order;
import com.project.mediverse.entity.Payment;


@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {

    // Find payments by order
    List<Payment> findByOrder(Order order);

    // Find payments by payment status
    List<Payment> findByPaymentStatus(String paymentStatus);
}