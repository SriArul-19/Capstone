package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Medicine;
import com.project.mediverse.entity.Order;
import com.project.mediverse.repository.InsuranceClaimRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class InsuranceClaimService {

    @Autowired
    private InsuranceClaimRepository insuranceClaimRepository;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private MedicineService medicineService;

    // Create an insurance claim
    
    public String addInsuranceClaim(Long customerId, 
            Long medicineId,
            double claimAmount, 
            String claimStatus, 
            LocalDate claimDate) 
    {
    	 // Find customer by customerId
        Customer customer = customerService.getCustomerById(customerId);
        Medicine medicine=medicineService.getMedicineById(medicineId);
        if(customer!=null && medicine !=null)
        {
                	// Create the insurance claim object
                	InsuranceClaim insuranceClaim = new InsuranceClaim();
                	insuranceClaim.setCustomer(customer);
                	insuranceClaim.setMedicine(medicine);
                	insuranceClaim.setClaimAmount(claimAmount);
                	insuranceClaim.setClaimStatus(claimStatus);
                	insuranceClaim.setClaimDate(claimDate);
      
                    // Save the order
                    insuranceClaimRepository.save(insuranceClaim);
                    return "Insurance Claim Added Successfully";
         }
        else if (customer==null && medicine ==null)
        {
        	return "CustomerId and MedicineId Both not found";
        }
        else if(customer==null && medicine !=null)
        {
                return "CustomerId not found";
        }
        else
        {
        	return "MedicineId not found";
        }
    }
    
    /*
    public InsuranceClaim addInsuranceClaim(InsuranceClaim insuranceClaim) 
    {
    	Optional<InsuranceClaim> opt=insuranceClaimRepository.findById(insuranceClaim.getClaimId());
    	if(opt.isPresent())
    	{
    		return null;
    	}
        return insuranceClaimRepository.save(insuranceClaim);
    }
    */
    //Update an insurance claim
    
    public InsuranceClaim updateInsuranceClaim(InsuranceClaim insuranceClaim)
    {
    	Optional<InsuranceClaim> opt=insuranceClaimRepository.findById(insuranceClaim.getClaimId());
    	if(opt.isPresent())
    	{
    		 return insuranceClaimRepository.save(insuranceClaim);
    	}
    	return null;
    }
    
    // Delete an insurance claim
    
    public String deleteInsuranceClaim(Long claimId)
    {
    	Optional<InsuranceClaim> opt=insuranceClaimRepository.findById(claimId);
    	if(opt.isPresent())
    	{
    		 insuranceClaimRepository.deleteById(claimId);
    		 return "Insurance Claim deleted successfully";
    	}
    	return "ClaimId not found";
    }

    // Find an insurance claim by ID
    public InsuranceClaim getInsuranceClaimById(Long claimId) {
    	Optional<InsuranceClaim> opt=insuranceClaimRepository.findById(claimId);
    	if(opt.isPresent())
    	{
    		InsuranceClaim result=opt.get();
    		return result;
    	}
    	return null;
    }
    
    // Find all insurance claim
    
    public List<InsuranceClaim> getAllInsuranceClaim()
    {
    	List<InsuranceClaim> result;
    	result=insuranceClaimRepository.findAll();
    	return result;
    }


    // Get insurance claims by customer
    public List<InsuranceClaim> getClaimsByCustomer(Long customerId) {
        Customer customer = customerService.getCustomerById(customerId);
        if (customer != null) {
            return insuranceClaimRepository.findByCustomer(customer);
        }
        return null;
    }

    // Get insurance claims by medicine
    public List<InsuranceClaim> getClaimsByMedicine(Long medicineId) {
        Medicine medicine = medicineService.getMedicineById(medicineId);
        if (medicine != null) {
            return insuranceClaimRepository.findByMedicine(medicine);
        }
        return null;
    }

    // Get claims by claim status
    public List<InsuranceClaim> getClaimsByStatus(String claimStatus) {
        return insuranceClaimRepository.findByClaimStatus(claimStatus);
    }
}