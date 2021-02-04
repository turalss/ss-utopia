package com.utopia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Passenger;

@Repository
public interface PassengerRepository extends JpaRepository<Passenger, Integer>{

}
