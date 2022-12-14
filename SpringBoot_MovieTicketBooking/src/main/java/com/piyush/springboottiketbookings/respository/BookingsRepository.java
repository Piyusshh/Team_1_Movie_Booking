package com.piyush.springboottiketbookings.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.piyush.springboottiketbookings.model.Bookings;

@Repository
public interface BookingsRepository extends JpaRepository<Bookings, Long> {

}
