package com.utopia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.utopia.model.Airport;

@Repository
public interface AirportRepository extends JpaRepository<Airport, String> {
  
	@Query(value="SELECT * FROM airport", nativeQuery=true)
  List<Airport> findAllAirports();
  
	@Query(value="SELECT * FROM airport WHERE iata_id = ?1", nativeQuery=true)
	Airport findAirportById(String id);

	@Query(value="INSERT INTO airport VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9)", nativeQuery=true)
	Airport createAirport(String iataId, String name, String cityCode, String cityName, 
	String countryCode, String countryName, Integer timezone, Float lat, Float lng);

	@Query(value="DELETE * FROM airport WHERE iata_id = ?1", nativeQuery=true)
	Airport deleteAirportById(String id);
}