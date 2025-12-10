package com.project.mediverse.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Medicine;


@Repository
public interface InsuranceClaimRepository extends JpaRepository<InsuranceClaim, Long> {

    // Find claims by customer
    List<InsuranceClaim> findByCustomer(Customer customer);

    // Find claims by medicine
    List<InsuranceClaim> findByMedicine(Medicine medicine);

    // Find claims by claim status
    List<InsuranceClaim> findByClaimStatus(String claimStatus);
}
