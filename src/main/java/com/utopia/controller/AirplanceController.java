package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Airplane;
import com.utopia.service.AirplaneService;

@RestController
@RequestMapping(value = "/airplanes")
public class AirplanceController {
	
	@Autowired
	AirplaneService airplaneService;
	
	@GetMapping("/all")
	public ResponseEntity<List<Airplane>> getAllAirplanes(){
		List<Airplane> airplaneList = airplaneService.getAllAirplanes();
		if(airplaneList.size() == 0) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneList, HttpStatus.OK);
	}	
}