package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Flight;

@Repository
public interface FlightRepository extends CrudRepository<Flight, Integer>{
	
	@Query(value="SELECT * FROM flight", nativeQuery=true)
	List<Flight> getAllFlights();
	
	@Query(value="SELECT * FROM flight WHERE id = 1?", nativeQuery=true)
	List<Flight> getFlightById(Integer id);
	
	@Query(value="SELECT * FROM flight WHERE route_id = 1?", nativeQuery=true)
	List<Flight> getFlightsByRouteId(Integer id);

}
