package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.Order;
import com.project.mediverse.entity.Payment;
import com.project.mediverse.repository.PaymentRepository;

import java.util.List;
import java.util.Optional;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    @Autowired
    private OrderService orderService;

 // Add a payment
    public Payment addPayment(Payment payment) 
    {
    	Optional<Payment> opt=paymentRepository.findById(payment.getPaymentId());
    	if(opt.isPresent())
    	{
    		return null;
    	}
        return paymentRepository.save(payment);
    }
    
    // Update a payment
    public Payment updatePayment(Payment payment)
    {
    	Optional<Payment> opt=paymentRepository.findById(payment.getPaymentId());
    	if(opt.isPresent())
    	{
    		 return paymentRepository.save(payment);
    	}
    	return null;
    }
    
    // Delete a payment
    
    public String deletePayment(Long paymentId)
    {
    	Optional<Payment> opt=paymentRepository.findById(paymentId);
    	if(opt.isPresent())
    	{
    		 paymentRepository.deleteById(paymentId);
    		 return "Payment deleted successfully";
    	}
    	return "PaymentId not found";
    }

    // Find a payment by ID
    public Payment getPaymentById(Long paymentId) {
    	Optional<Payment> opt=paymentRepository.findById(paymentId);
    	if(opt.isPresent())
    	{
    		Payment result=opt.get();
    		return result;
    	}
    	return null;
    }
    
    // Find all payment
    
    public List<Payment> getAllPayment()
    {
    	List<Payment> result;
    	result=paymentRepository.findAll();
    	return result;
    }

    // Get payments by order
    public List<Payment> getPaymentsByOrder(Long orderId) {
        Order order = orderService.getOrderById(orderId);
        if (order != null) {
            return paymentRepository.findByOrder(order);
        }
        return null;
    }

    // Get payments by payment status
    public List<Payment> getPaymentsByStatus(String paymentStatus) {
        return paymentRepository.findByPaymentStatus(paymentStatus);
    }
}