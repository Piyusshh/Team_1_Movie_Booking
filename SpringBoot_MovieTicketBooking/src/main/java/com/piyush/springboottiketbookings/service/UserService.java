package com.piyush.springboottiketbookings.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.piyush.springboottiketbookings.DAO.UserDao;
import com.piyush.springboottiketbookings.exception.ProductNotfoundException;
import com.piyush.springboottiketbookings.exception.UserNotFound;
import com.piyush.springboottiketbookings.model.Customer;

import java.util.*;
@Service
public class UserService {

	@Autowired
	UserDao userdao;
	
	public List<Customer> getuser() {
		// TODO Auto-generated method stub
        return userdao.findAll();
	}
//	
//	public String checkUser()
//	{
//		
//	}

	public Customer getUserById(int id) throws UserNotFound {
		// TODO Auto-generated method stub
		Customer customer= userdao.findById(id);
		List<Customer>allUser=userdao.findAll();
		for(Customer user:allUser)
		{
			if(customer.equals(user))
			{
				return customer;
			}
		}
		throw new UserNotFound();
	}

}
