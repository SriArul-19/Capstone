package com.project.mediverse.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.mediverse.entity.Customer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    // Custom query to find customer by email
    Customer findByEmail(String email);
    
    // Custom query to check if a customer is eligible for insurance
    boolean existsByInsuranceEligibility(boolean eligibility);
}