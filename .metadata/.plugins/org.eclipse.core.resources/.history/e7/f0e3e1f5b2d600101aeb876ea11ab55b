package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.repository.CredentialRepository;
import com.project.mediverse.repository.CustomerRepository;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {

    private final CredentialRepository credentialRepository;

    @Autowired
    private CustomerRepository customerRepository;

    CustomerService(CredentialRepository credentialRepository) {
        this.credentialRepository = credentialRepository;
    }

 // Add a customer
    public String addCustomer(Customer customer) 
    {
    		Customer result=customerRepository.save(customer);
    		if(result!=null)
    		{
    			return "Customer Added Successfully";
    		}
        return "Customer not added";
    }
    
    // Update a customer
    public String updateCustomer(Customer customer)
    {
    	Optional<Customer> opt=customerRepository.findById(customer.getCustomerId());
    	if(opt.isPresent())
    	{
    		 Customer result=customerRepository.save(customer);
    		 if(result!=null)
    		 {
    		 return "Customer Updated Succesfully";
    		 }
    		 else
    		 {
    			 return "Customer not updated";
    		 }
    	}
    	return "CustomerId not found";
    }
    
    // Delete a customer
    
    public String deleteCustomer(Long customerId)
    {
    	Optional<Customer> opt=customerRepository.findById(customerId);
    	if(opt.isPresent())
    	{
    		 customerRepository.deleteById(customerId);
    		 return "Customer deleted successfully";
    	}
    	return "CustomerId not found";
    }

    // Find a customer by ID
    public Customer getCustomerById(Long customerId) {
    	Optional<Customer> opt=customerRepository.findById(customerId);
    	if(opt.isPresent())
    	{
    		Customer result=opt.get();
    		return result;
    	}
    	return null;
    }
    
    // Find all customer
    
    public List<Customer> getAllCustomer()
    {
    	List<Customer> result;
    	result=customerRepository.findAll();
    	return result;
    }

    // Find a customer by email
    public Customer getCustomerByEmail(String email) {
        return customerRepository.findByEmail(email);
    }

    // Check if a customer is eligible for insurance
    public boolean isCustomerEligibleForInsurance(Long customerId) {
        Customer customer = getCustomerById(customerId);
        return customer != null && customer.isInsuranceEligibility();
    }
}