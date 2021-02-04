package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.exeptions.AirportAlreadyExistsException;
import com.utopia.exeptions.AirportNotFoundException;
import com.utopia.model.Airport;
import com.utopia.service.AirportService;

@RestController
@RequestMapping(value = "/airport")
public class AirportController {

	@Autowired
	AirportService airportService;
	
	
	@GetMapping
	public ResponseEntity<List<Airport>> findAll() {
		List<Airport> list = airportService.findAllAirports();
		if (list.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@GetMapping("/{airportCode}")
	public ResponseEntity<Airport> findByCode(@PathVariable String airportCode) {
		Airport airport = airportService.findAirportByCode(airportCode);
		if (airport == null) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(airport, HttpStatus.OK);
	}

	@DeleteMapping("/{airportCode}")
	public <T> ResponseEntity<T> delete(@PathVariable String airportCode) throws AirportNotFoundException {
		Airport airport = airportService.findAirportByCode(airportCode);
		if (airport == null) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else {
			airportService.deleteAirport(airport);
			return new ResponseEntity<>(null, HttpStatus.OK);
		}
	}

	@PostMapping
	public ResponseEntity<Airport> insert(@RequestBody Airport airport) throws AirportAlreadyExistsException {
		Airport newAirport = (Airport) airportService.insertAirport(airport);
		if (newAirport == null) {
			return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		} 
		
			return new ResponseEntity<>(newAirport, HttpStatus.CREATED);
	}

}
