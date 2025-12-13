package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Medicine;
import com.project.mediverse.entity.Order;
import com.project.mediverse.entity.Payment;
import com.project.mediverse.repository.PaymentRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;
 
    @Autowired
    private OrderService orderService;
    @Autowired
    private CustomerService customerService;

 // Add a payment
    
    public String addPayment(Long orderId,
    		Long customerId,
            LocalDate paymentDate,
            double paymentAmount,
            String paymentMethod,
            String paymentStatus) 
    {
    	 // Find order by orderId
        Order order = orderService.getOrderById(orderId);
        Customer customer=customerService.getCustomerById(customerId);
        if(order!=null && customer!=null)
        {
                	// Create the payment object
                	Payment payment = new Payment();
                	payment.setOrder(order);  // Retrieve the order using the orderId
                	payment.setCustomer(customer);
                	payment.setPaymentDate(paymentDate);    // Convert the date string to LocalDate
                    payment.setPaymentAmount(paymentAmount);
                    payment.setPaymentMethod(paymentMethod);
                    payment.setPaymentStatus(paymentStatus);
      
                    // Save the payment
                    paymentRepository.save(payment);
                    return "Payment Added Successfully";
         }
        else if(order==null && customer!=null)
        {
        	return "OrderId not found";
        }
        else if(order!=null && customer==null)
        {
        	return "CustomerId not found";
        }
        else
        {
        	return "OrderId and CustomerId both not found";
        }
    }
    public Payment addPayment(Payment payment)
    {
    	return paymentRepository.save(payment);
    }
    
    // Update a payment
    
    public String updatePayment(Long paymentId,Long orderId,
    		Long customerId,
            LocalDate paymentDate,
            double paymentAmount,
            String paymentMethod,
            String paymentStatus) 
    {
    	 // Find customer by customerId
    	Optional<Payment> opt=paymentRepository.findById(paymentId);
    	
    	if(opt.isPresent())
    	{
        Order order = orderService.getOrderById(orderId);
        Customer customer=customerService.getCustomerById(customerId);
        if(order!=null && customer!=null)
        {
                	// Create the payment object
                	Payment payment = new Payment();
                	payment.setOrder(order);  // Retrieve the order using the orderId
                	payment.setCustomer(customer);
                	payment.setPaymentDate(paymentDate);    // Convert the date string to LocalDate
                    payment.setPaymentAmount(paymentAmount);
                    payment.setPaymentMethod(paymentMethod);
                    payment.setPaymentStatus(paymentStatus);
      
                    // Save the payment
                    paymentRepository.save(payment);
                    return "Payment updated Successfully";
         }
        else if(order==null && customer!=null)
        {
        	return "OrderId not found";
        }
        else if(order!=null && customer==null)
        {
        	return "CustomerId not found";
        }
        else
        {
        	return "OrderId and CustomerId both not found";
        }
    	}
    	return "PaymentId not found";
    }
    public Payment updatePayment(Payment payment)
    {
    	return paymentRepository.save(payment);
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
    
    public boolean validateCard(String cardNumber, String cardCvv, String cardExpiryMonth, String cardExpiryYear, String cardHolderName) {
        // Simple validation (extend this with real card validation logic or integrate a payment gateway)
        return cardNumber.length() == 16 && cardCvv.length() == 3; // Basic checks
    }

    public void createPayment(Payment payment) {
        // Save payment details in the database
        paymentRepository.save(payment);
    }
}