package com.project.mediverse.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mediverse.entity.Credential;
import com.project.mediverse.repository.CredentialRepository;

@Service
public class CredentialService 
{
	@Autowired
	private CredentialRepository cr;
	public String addCredential(Credential credential)
	{
		Optional<Credential> opt=cr.findById(credential.getUserId());
		
		if(opt.isPresent())
		{
			return "Account already exist";
		}
		Credential result=cr.save(credential);
		return "Account Created Successfully";
	}
	public String changePassword(String userId,String oldPassword,String newPassword)
	{
		Optional<Credential> opt=cr.findById(userId);
		if(opt.isPresent())
		{
			Credential credential=opt.get();
	    	if(userId.equals(credential.getUserId()) && oldPassword.equals(credential.getPassword()))
	    	{
	    		credential.setPassword(newPassword);
	    		Credential result=cr.save(credential);
	    		if(result!=null)
	    		{
	    			return "Password Changed Suuccessfully";
	    		}
	    		return "Password not Changed";
	    	}
	    	return "Incorrect Credentials";
		}
		return "UesrId not found";
		
	}
}
