package com.utopia.repository;

import java.util.List;

import com.utopia.model.Booking;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends CrudRepository<Booking, Integer> {
	
	@Query(value="SELECT * FROM booking", nativeQuery=true)
	List<Booking> getAllBookings();
	
	@Query(value="SELECT * FROM booking WHERE id = 1?", nativeQuery=true)
	Booking getBookingWithId(Integer id);
	
	@Query(value="SELECT * FROM booking WHERE confirmation_code = 1?", nativeQuery=true)
  Booking getBookingWithConfirmationCode(String confirmationCode);
  
  @Query(value="SELECT * FROM booking WHERE status = 1?", nativeQuery=true)
  List<Booking> getBookingsWithStatus(String status);
}