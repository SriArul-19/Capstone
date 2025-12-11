package com.project.mediverse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.mediverse.entity.Credential;

@Controller
@RequestMapping("/user")
public class CustomerController 
{
	@GetMapping("/home")
    public ModelAndView showHomePage() 
    {
        return new ModelAndView("UserHomePage");
    }
    @GetMapping("/invalid")
    public ModelAndView showInvalidPage() 
    {
        return new ModelAndView("InvalidPage");
    }
    @GetMapping("/profile")
    public ModelAndView showUserProfilePage()
    {
    	return new ModelAndView("UserProfilePage");
    }
    @GetMapping("/order")
    public ModelAndView showUserOrderPage()
    {
    	return new ModelAndView("UserOrderPage");
    }
    
}
