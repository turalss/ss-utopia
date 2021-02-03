package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Passenger;
import com.utopia.service.PassengerService;

@RestController
@RequestMapping(value = "/passenger")
public class PassengerController {

	@Autowired
	PassengerService passengerService;
	
	@GetMapping("/all")
	public ResponseEntity<List<Passenger>> getAllPassengers(){
		List<Passenger> passengerList = passengerService.getAllPassengers();
		if(passengerList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(passengerList, HttpStatus.OK);
	}	
	
}
