package com.utopia.repository;

import java.util.List;

import com.utopia.model.Booking;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

	@Query(value = "SELECT * FROM booking", nativeQuery = true)
	List<Booking> findAllBookings();

	@Query(value = "SELECT * FROM booking WHERE id = ?1", nativeQuery = true)
	Booking findBookingById(Integer id);

	@Query(value = "SELECT * FROM booking WHERE confirmation_code = ?1", nativeQuery = true)
	Booking findBookingByConfirmationCode(String confirmationCode);

	@Query(value = "SELECT * FROM booking WHERE status = ?1", nativeQuery = true)
	List<Booking> findBookingsByStatus(String status);
}