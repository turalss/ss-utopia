package com.utopia.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Flight;

@Repository
public interface FlightRepository extends JpaRepository<Flight, Integer>{
	
	@Query(value="SELECT * FROM flight", nativeQuery=true)
	List<Flight> findAllFlights();
	
	@Query(value="SELECT * FROM flight WHERE id = ?1", nativeQuery=true)
	List<Flight> findFlightById(Integer id);
	
	@Query(value="SELECT * FROM flight WHERE route_id = ?1", nativeQuery=true)
	List<Flight> findFlightsByRouteId(Integer id);
	
	@Query(value="SELECT * FROM flight WHERE CAST(departure_time AS DATE) = ?1", nativeQuery=true)
	List<Flight> findFlightsByDate(Date date);
		
	@Query(value="SELECT flight.* FROM route, flight WHERE route.origin_id = ?1 AND route.destination_id = ?2 AND flight.route_id = route.id;", nativeQuery=true)
	List<Flight> findFlightsByOrigDest(String origin, String destination);

}
