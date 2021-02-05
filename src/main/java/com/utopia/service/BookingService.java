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

	public List<Booking> findAllBookings() {
		return bookingRepository.findAllBookings();
	}
	
	public Booking findBookingById(Integer id) {
		return bookingRepository.findBookingById(id);
	}
	
	public Booking findBookingByConfirmationCode(String confirmationCode) {
		return bookingRepository.findBookingByConfirmationCode(confirmationCode);
	}

	public List<Booking> findBookingsByStatus(String status) {
		return bookingRepository.findBookingsByStatus(status);
	}
}