package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.InsuranceClaim;
import com.project.mediverse.entity.Medicine;
import com.project.mediverse.repository.InsuranceClaimRepository;

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
    
    public InsuranceClaim addInsuranceClaim(InsuranceClaim insuranceClaim) 
    {
    	Optional<InsuranceClaim> opt=insuranceClaimRepository.findById(insuranceClaim.getClaimId());
    	if(opt.isPresent())
    	{
    		return null;
    	}
        return insuranceClaimRepository.save(insuranceClaim);
    }
    
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