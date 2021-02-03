package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.AirplaneType;
import com.utopia.service.AirplaneService;

@RestController
@RequestMapping(value = "/airplanetypes")
public class AirplaneTypeController {
	
	@Autowired
	AirplaneService airplaneService;
	
	@GetMapping("/all")
	public ResponseEntity<List<AirplaneType>> getAllAirplaneTypes(){
		List<AirplaneType> airplaneTypeList = airplaneService.getAllAirplaneTypes();
		if(airplaneTypeList.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneTypeList, HttpStatus.OK);
	}	
}