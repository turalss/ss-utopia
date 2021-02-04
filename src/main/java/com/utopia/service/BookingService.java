package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Booking;
import com.utopia.repository.BookingRepository;

@Service
public class BookingService {
  
	@Autowired
	private BookingRepository bookingRepository;

	public List<Booking> getAllBookings() {
		return bookingRepository.getAllBookings();
	}
	
	public Booking getBookingWithId(Integer id) {
		return bookingRepository.getBookingWithId(id);
	}
	
	public Booking getBookingWithConfirmationCode(String confirmationCode) {
		return bookingRepository.getBookingWithConfirmationCode(confirmationCode);
	}

	public List<Booking> getBookingsWithStatus(String status) {
		return bookingRepository.getBookingsWithStatus(status);
	}
}