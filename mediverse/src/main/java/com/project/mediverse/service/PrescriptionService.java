package com.project.mediverse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.Medicine;
import com.project.mediverse.entity.Order;
import com.project.mediverse.entity.Payment;
import com.project.mediverse.entity.Prescription;
import com.project.mediverse.repository.CustomerRepository;
import com.project.mediverse.repository.PrescriptionRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class PrescriptionService {

    private final CustomerRepository customerRepository;

    @Autowired
    private PrescriptionRepository prescriptionRepository;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private MedicineService medicineService;

    PrescriptionService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    // Add a prescription
    
    public String addPrescription(Long customerId,
           Long medicineId,
           LocalDate prescriptionDate,
           String dosage,
           String instructions) 
    {
    	 // Find customer and medicine by Id
        Customer customer = customerService.getCustomerById(customerId);
        Medicine medicine= medicineService.getMedicineById(medicineId);
        if(customer!=null && medicine!=null)
        {
                	// Create the prescription object
                	Prescription prescription = new Prescription();
                	prescription.setCustomer(customer);
                    prescription.setMedicine(medicine);
                    prescription.setPrescriptionDate(prescriptionDate);
                    prescription.setDosage(dosage);
                    prescription.setInstructions(instructions);
      
                    // Save the object
                    prescriptionRepository.save(prescription);
                    return "Prescription Added Successfully";
         }
        else if (customer==null && medicine==null)
        {
        	return "CustomerId and MedicineId both not found";
        }
        else if(customer==null && medicine!=null)
        {
        	return "CustomerId not found";
        }
        else
        {
        	return "MedicineId not found";
        }
    }
    public Prescription addPrescription(Prescription prescription)
    {
    	return prescriptionRepository.save(prescription);
    }
    //Update a prescription
    public String updatePrescription(Long prescriptionId,Long customerId,
            Long medicineId,
            LocalDate prescriptionDate,
            String dosage,
            String instructions)
    {
    	Optional<Prescription> opt=prescriptionRepository.findById(prescriptionId);
    	if(opt.isPresent())
    	{
    	 // Find customer and medicine by Id
        Customer customer = customerService.getCustomerById(customerId);
        Medicine medicine= medicineService.getMedicineById(medicineId);
        if(customer!=null && medicine!=null)
        {
                	// Create the prescription object
                	Prescription prescription = new Prescription();
                	prescription.setCustomer(customer);
                    prescription.setMedicine(medicine);
                    prescription.setPrescriptionDate(prescriptionDate);
                    prescription.setDosage(dosage);
                    prescription.setInstructions(instructions);
      
                    // Save the object
                    prescriptionRepository.save(prescription);
                    return "Prescription Added Successfully";
         }
        else if (customer==null && medicine==null)
        {
        	return "CustomerId and MedicineId both not found";
        }
        else if(customer==null && medicine!=null)
        {
        	return "CustomerId not found";
        }
        else
        {
        	return "MedicineId not found";
        }
    	}
    	return "PrescriptionId not found";
    }
    
    public Prescription updatePrescription(Prescription prescription)
    {
    	return prescriptionRepository.save(prescription);
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
    public List<Prescription> getPrescriptionsByCustomerId(Long customerId) {
        // Calls the corrected custom method in the Repository
        return prescriptionRepository.findByCustomer_CustomerId(customerId); // Use the new method name
    }
}