package com.utopia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Airport;

@Repository
public interface AirportRepository extends JpaRepository<Airport, String> {

	
}