package com.project.mediverse.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.mediverse.entity.OrderCancellationRequest;
import com.project.mediverse.repository.OrderCancellationRequestRepository;

import java.util.List;

@Service
public class OrderCancellationRequestService {

    @Autowired
    private OrderCancellationRequestRepository orderCancellationRequestRepository;

    public OrderCancellationRequest createCancellationRequest(OrderCancellationRequest request) {
        return orderCancellationRequestRepository.save(request);
    }

    public List<OrderCancellationRequest> getAllCancellationRequests() {
        return orderCancellationRequestRepository.findAll();
    }

    public OrderCancellationRequest getCancellationRequestById(Long cancellationId) {
        return orderCancellationRequestRepository.findById(cancellationId).orElse(null);
    }

    public void updateCancellationRequest(OrderCancellationRequest request) {
        orderCancellationRequestRepository.save(request);
    }

    public void deleteCancellationRequest(Long cancellationId) {
        orderCancellationRequestRepository.deleteById(cancellationId);
    }
}
