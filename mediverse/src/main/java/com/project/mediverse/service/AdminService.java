package com.project.mediverse.service;
import com.project.mediverse.repository.AdminRepository;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Admin;
import com.project.mediverse.entity.Customer;
import com.project.mediverse.entity.Order;

@Service
public class AdminService 
{

    private final AdminRepository adminRepository;

    AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }
	public Admin addAdmin(Admin admin)
	{
		return adminRepository.save(admin);
		
	}
	 public Admin updateAdmin(Admin admin)
	    {
	    	return adminRepository.save(admin);
	    }
	public Admin findAdminByUsername(String username) {
        return adminRepository.findByUsername(username);  // Find the admin by username
    }
	public Admin getAdminById(Long adminId) {
    	Optional<Admin> opt=adminRepository.findById(adminId);
    	if(opt.isPresent())
    	{
    		Admin result=opt.get();
    		return result;
    	}
    	return null;
    }
	public boolean changePassword(Long adminId, String oldPassword, String newPassword) {
	    
	    Admin admin = getAdminById(adminId); 
	    
	    if (admin == null) {
	        return false;
	    }
	    if (!admin.getPassword().equals(oldPassword)) { 
	         return false; // Old password mismatch
	    }

	    admin.setPassword(newPassword);
	    adminRepository.save(admin);
	    return true; 
	}
}
