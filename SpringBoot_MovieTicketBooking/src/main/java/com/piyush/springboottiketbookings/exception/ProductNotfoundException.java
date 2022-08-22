package com.piyush.springboottiketbookings.exception;

import com.piyush.springboottiketbookings.model.City;

public class ProductNotfoundException extends RuntimeException{
	private static final long serialVersionUID = 1L;
	
	public City cityCheck()
	{
		City c = new City();
		System.out.println("City Not Found");
		return c;
	}


}
