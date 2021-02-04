package com.utopia.controller;

import java.util.List;

import com.utopia.model.Booking;
import com.utopia.service.BookingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/bookings")
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	
	@GetMapping("/all")
	public ResponseEntity<List<Booking>> findAllBookings(){
		List<Booking> bookingList = bookingService.findAllBookings();
		if(bookingList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(bookingList, HttpStatus.OK);
  }
}