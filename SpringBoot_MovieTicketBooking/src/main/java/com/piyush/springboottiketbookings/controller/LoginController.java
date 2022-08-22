package com.piyush.springboottiketbookings.controller;

import java.util.HashMap;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.piyush.springboottiketbookings.exception.UserNotFound;
import com.piyush.springboottiketbookings.model.City;
import com.piyush.springboottiketbookings.model.Customer;
import com.piyush.springboottiketbookings.model.Theater;
import com.piyush.springboottiketbookings.service.UserService;

import org.springframework.web.bind.annotation.RequestBody;
@RestController
@RequestMapping("/login")
@ControllerAdvice
public class LoginController {
	
	@Autowired
	UserService userservice;
	@GetMapping("/test")
	public String returnString() {
		return "hellow world";
	}
	
	
	@GetMapping("/user")
	public List<Customer> userString() {
		return userservice.getuser();
	}
	
	@PostMapping("/user")
	public String checkUser(@RequestBody HashMap<String, String> requestData)
	{
		Customer login=new Customer();
//		login.setId(0);
		login.setUsername(requestData.get("name"));
		login.setUserpassword(requestData.get("password"));
		login.setRole(requestData.get("role"));
//		System.out.println(requestData.get("name"));
		List<Customer>allUsers=userservice.getuser();
		System.out.println(allUsers);
		int flag = 0;
		String role;
			for(Customer user:allUsers)
			{
				if(login.getUsername().equalsIgnoreCase(user.getUsername()))
				{
					if(login.getUserpassword().equalsIgnoreCase(user.getUserpassword()))
					{
						if(login.getRole().equals(user.getRole()))
						{
						flag=1; // exact match
						}
					}
				}
			}
			if(flag==0)
			{
				try
				{
					
					throw new UserNotFound();
				}
				catch(UserNotFound e)
				{
					//System.out.println("not present");
					e.userCheck();
					return "invalid user";
				}
			}
			else {
			//System.out.println("present");
			return "Login as "+login.getRole(); 
			}
}
}
