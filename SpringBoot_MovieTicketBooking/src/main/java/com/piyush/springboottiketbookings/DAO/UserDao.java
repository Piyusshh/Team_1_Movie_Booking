package com.piyush.springboottiketbookings.DAO;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.piyush.springboottiketbookings.model.Customer;

@Repository
public interface UserDao extends JpaRepository<Customer, Integer>{
   public Customer findById(int id);
}
