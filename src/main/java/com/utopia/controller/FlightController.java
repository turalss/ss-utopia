package com.utopia.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Flight;
import com.utopia.service.FlightService;

@RestController
@RequestMapping(value="/flight")
public class FlightController {
	
	@Autowired
	FlightService flightService;
	
	@GetMapping()
	public ResponseEntity<List<Flight>> findAllFlights(){
		List<Flight> flightList = flightService.findAllFlights();
		if(flightList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(flightList, HttpStatus.OK);
	}
	
	@GetMapping("/{date}")
	public ResponseEntity<List<Flight>> getFlightsByDate(@PathVariable Date date){
		List<Flight> flightList = flightService.getFlightsByDate(date);
		if(flightList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(flightList, HttpStatus.OK);
	}
	
	@GetMapping("/{origin}/{destination}")
	public ResponseEntity<List<Flight>> getFlightsByOrigDate(@PathVariable String origin, String destination){
		List<Flight> flightList = flightService.getFlightsByOrigDest(origin, destination);
		if(flightList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(flightList, HttpStatus.OK);
	}

	
}
