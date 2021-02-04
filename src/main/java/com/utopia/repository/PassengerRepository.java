package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Passenger;

@Repository
public interface PassengerRepository extends CrudRepository<Passenger, Integer>{

	@Query(value="SELECT * FROM passenger", nativeQuery=true)
	List<Passenger> getAllPassengers();
	
	@Query(value="SELECT * FROM passenger WHERE id = 1?", nativeQuery=true)
	List<Passenger> getPassengerById(Integer id);
	
	@Query(value="SELECT * FROM passenger WHERE booking_id = 1?", nativeQuery=true)
	List<Passenger> getPassengerByBookingId(Integer id);
}
