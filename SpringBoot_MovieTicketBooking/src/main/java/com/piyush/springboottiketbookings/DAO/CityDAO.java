package com.piyush.springboottiketbookings.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.piyush.springboottiketbookings.exception.ProductNotfoundException;
import com.piyush.springboottiketbookings.model.City;
import com.piyush.springboottiketbookings.respository.CityRepository;

@Service
public class CityDAO {
	
	@Autowired
	CityRepository theCityRepository;
	
//	to save city
	public City save(City c) {
		return theCityRepository.save(c);
	}
	
//	Get all list of  City 
	public List<City> getCity( ){
		return theCityRepository.findAll();
	}
	
//	update City 
	
	
//	get City by ID
	public City findOne(long cityID) throws ProductNotfoundException {
		System.out.println("Coming to Dao");
		if(theCityRepository.getOne(cityID) == null)
		{
			throw new ProductNotfoundException();
		}
		return theCityRepository.getOne(cityID);
	}
	
//	Delete city
	public void deletecity(City c) {
		theCityRepository.delete(c);
	}
	

}
