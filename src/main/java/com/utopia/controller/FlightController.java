package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Flight;
import com.utopia.service.FlightService;

@RestController
@RequestMapping(value="/flight")
public class FlightController {
	
	@Autowired
	FlightService flightService;
	
	@GetMapping("/all")
	public ResponseEntity<List<Flight>> getAllFlights(){
		List<Flight> flightList = flightService.getAllFlights();
		if(flightList.size() == 0) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(flightList, HttpStatus.OK);
	}	

}
