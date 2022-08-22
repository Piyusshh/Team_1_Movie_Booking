package com.piyush.springboottiketbookings.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.piyush.springboottiketbookings.model.City;
import com.piyush.springboottiketbookings.model.Theater;

public interface TheaterRepository extends JpaRepository<Theater, Long> {

	public List<Theater> findByCity(City ID);
}
