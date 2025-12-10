package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.Medicine;
import com.project.mediverse.entity.Prescription;
import com.project.mediverse.repository.PrescriptionRepository;

import java.util.List;
import java.util.Optional;

@Service
public class PrescriptionService {

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private MedicineService medicineService;

 // Add a prescription
    public Prescription addPrescription(Prescription prescription) 
    {
    	Optional<Prescription> opt=prescriptionRepository.findById(prescription.getPrescriptionId());
    	if(opt.isPresent())
    	{
    		return null;
    	}
        return prescriptionRepository.save(prescription);
    }
    
    // Update a prescription
    public Prescription updatePrescription(Prescription prescription)
    {
    	Optional<Prescription> opt=prescriptionRepository.findById(prescription.getPrescriptionId());
    	if(opt.isPresent())
    	{
    		 return prescriptionRepository.save(prescription);
    	}
    	return null;
    }
    
    // Delete a prescription
    
    public String deletePrescription(Long prescriptionId)
    {
    	Optional<Prescription> opt=prescriptionRepository.findById(prescriptionId);
    	if(opt.isPresent())
    	{
    		 prescriptionRepository.deleteById(prescriptionId);
    		 return "Prescription deleted successfully";
    	}
    	return "PrescriptionId not found";
    }

    // Find a prescription by ID
    public Prescription getPrescriptionById(Long prescriptionId) {
    	Optional<Prescription> opt=prescriptionRepository.findById(prescriptionId);
    	if(opt.isPresent())
    	{
    		Prescription result=opt.get();
    		return result;
    	}
    	return null;
    }
    
    // Find all prescription
    
    public List<Prescription> getAllPrescription()
    {
    	List<Prescription> result;
    	result=prescriptionRepository.findAll();
    	return result;
    }
    // Get prescriptions by customer
    public List<Prescription> getPrescriptionsByCustomer(Long customerId) {
        Customer customer = customerService.getCustomerById(customerId);
        if (customer != null) {
            return prescriptionRepository.findByCustomer(customer);
        }
        return null;
    }

    // Get prescriptions by medicine
    public List<Prescription> getPrescriptionsByMedicine(Long medicineId) {
        Medicine medicine = medicineService.getMedicineById(medicineId);
        if (medicine != null) {
            return prescriptionRepository.findByMedicine(medicine);
        }
        return null;
    }
}