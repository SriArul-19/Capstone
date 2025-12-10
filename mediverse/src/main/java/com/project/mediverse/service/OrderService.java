package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Order;
import com.project.mediverse.repository.OrderRepository;

import java.util.List;
import java.util.Optional;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private CustomerService customerService;

    // Add an order
    public Order addOrder(Order order) 
    {
    	Optional<Order> opt=orderRepository.findById(order.getOrderId());
    	if(opt.isPresent())
    	{
    		return null;
    	}
        return orderRepository.save(order);
    }
    
    // Update an order
    public Order updateOrder(Order order)
    {
    	Optional<Order> opt=orderRepository.findById(order.getOrderId());
    	if(opt.isPresent())
    	{
    		 return orderRepository.save(order);
    	}
    	return null;
    }
    
    // Delete an order
    
    public String deleteOrder(Long orderId)
    {
    	Optional<Order> opt=orderRepository.findById(orderId);
    	if(opt.isPresent())
    	{
    		 orderRepository.deleteById(orderId);
    		 return "Order deleted successfully";
    	}
    	return "OrderId not found";
    }

    // Find an order by ID
    public Order getOrderById(Long orderId) {
    	Optional<Order> opt=orderRepository.findById(orderId);
    	if(opt.isPresent())
    	{
    		Order result=opt.get();
    		return result;
    	}
    	return null;
    }
    
    // Find all order
    
    public List<Order> getAllOrder()
    {
    	List<Order> result;
    	result=orderRepository.findAll();
    	return result;
    }

    // Get orders by customer
    public List<Order> getOrdersByCustomer(Long customerId) {
        Customer customer = customerService.getCustomerById(customerId);
        if (customer != null) {
            return orderRepository.findByCustomer(customer);
        }
        return null;
    }

    // Get orders by payment status
    public List<Order> getOrdersByPaymentStatus(String paymentStatus) {
        return orderRepository.findByPaymentStatus(paymentStatus);
    }

    // Get orders by insurance claim
    public List<Order> getOrdersByInsuranceClaim(Long insuranceClaimId) {
        InsuranceClaim insuranceClaim = new InsuranceClaim();
        insuranceClaim.setClaimId(insuranceClaimId);
        return orderRepository.findByInsuranceClaim(insuranceClaim);
    }
}