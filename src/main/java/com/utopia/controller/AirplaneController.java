package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Airplane;
import com.utopia.model.AirplaneType;
import com.utopia.service.AirplaneService;

@RestController
@RequestMapping(value = "/airplanes")
public class AirplaneController {
	
	@Autowired
	AirplaneService airplaneService;
	
	@GetMapping("/all")
	public ResponseEntity<List<Airplane>> findAllAirplanes(){
		List<Airplane> airplaneList = airplaneService.findAllAirplanes();
		if(airplaneList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneList, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<Airplane> findAirplaneByID(@PathVariable Integer id) throws NullPointerException{
		List<Airplane> airplaneList = airplaneService.findAirplaneById(id);
		if(airplaneList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneList.get(0), HttpStatus.OK);
	}

	@GetMapping("/types/all")
	public ResponseEntity<List<AirplaneType>> findAllAirplaneTypes(){
		List<AirplaneType> airplaneTypeList = airplaneService.findAllAirplaneTypes();
		if(airplaneTypeList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneTypeList, HttpStatus.OK);
	}	
}