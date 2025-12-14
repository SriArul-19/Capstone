package com.project.mediverse.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.project.mediverse.entity.OrderCancellationRequest;

@Repository
public interface OrderCancellationRequestRepository extends JpaRepository<OrderCancellationRequest, Long> {
    // You can add custom query methods here if needed
}