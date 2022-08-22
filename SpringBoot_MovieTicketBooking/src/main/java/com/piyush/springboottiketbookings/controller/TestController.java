package com.piyush.springboottiketbookings.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.piyush.springboottiketbookings.DAO.CityDAO;
import com.piyush.springboottiketbookings.DAO.MovieDAO;
import com.piyush.springboottiketbookings.model.City;
import com.piyush.springboottiketbookings.model.Movie;



@RestController
public class TestController {

		
	@Autowired
	CityDAO theCityDAO;
	
	@Autowired
	MovieDAO theMovieDAO;

	
	@GetMapping("/Testcity/1")
	public City testCity() {
				
		City theCity = theCityDAO.findOne(1);
		return theCity;
	
	}
	
	@GetMapping("/Testmovie/3")
	public Movie testMovie() {
		

		Movie theMovie = theMovieDAO.findOne(3);
		return theMovie;
	
	}
	
	

}
