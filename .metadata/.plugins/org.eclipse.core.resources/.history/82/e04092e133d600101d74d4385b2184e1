package com.project.mediverse.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.mediverse.entity.Credential;
import com.project.mediverse.repository.CredentialRepository;
import com.project.mediverse.service.CredentialService;

@Controller
@RequestMapping("/mediverse")
public class LoginController 
{
	@Autowired
	private CredentialRepository cr;
	@Autowired
	private CredentialService cs;
    @GetMapping("/login")
    public ModelAndView showLoginPage() 
    {
        return new ModelAndView("LoginPage");
    }
    @PostMapping("/validate")
    public RedirectView validateCredentials(@RequestParam("userType") String userType,@RequestParam("userId") String userId,@RequestParam("password") String password) 
    {
    	Optional<Credential> opt=cr.findById(userId);
    	Credential credential=opt.get();
    	System.out.println(credential.getUserId());
    	System.out.println(credential.getPassword());
    	System.out.println(credential.getUserType());
    	System.out.println(credential.getLoginStatus());
        if(userId.equals(credential.getUserId()) && password.equals(credential.getPassword()) && userType.equals(credential.getUserType()) && (credential.getLoginStatus()==0))
        {
        	return new RedirectView("/admin/home");
            //return "forward:/admin/home";
        }
        else
        {
        	return new RedirectView("/admin/invalid");
            //return "forward:/admin/invalid";
        }
    }
    @GetMapping("/signUp")
    public ModelAndView showSignUpPage() 
    {
        return new ModelAndView("SignUpPage");
    }
    @PostMapping("/createAccount")
    public ResponseEntity<String> createAccount(@ModelAttribute("credential")Credential credential)
    {
    	
    	return ResponseEntity.ok().body(cs.addCredential(credential));
    }
    @GetMapping("/password")
    public ModelAndView showChangePasswordPage()
    {
    	return new ModelAndView("ChangePasswordPage");
    }
    @PostMapping("/changePassword")
    public ResponseEntity<String> changePassword(@RequestParam("userId")String userId,@RequestParam("oldPassword")String oldPassword,@RequestParam("newPassword")String newPassword)
    {
    	return ResponseEntity.ok().body(cs.changePassword(userId,oldPassword,newPassword));
    }
}
