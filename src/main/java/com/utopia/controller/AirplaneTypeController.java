package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.AirplaneType;
import com.utopia.service.AirplaneTypeService;

@RestController
@RequestMapping(value = "/airplanetypes")
public class AirplaneTypeController {
	
	@Autowired
	AirplaneTypeService airplaneTypeService;
	
	@GetMapping("/all")
	public ResponseEntity<List<AirplaneType>> getAllAirplaneTypes(){
		List<AirplaneType> airplaneTypeList = airplaneTypeService.getAllAirplaneTypes();
		if(airplaneTypeList.size() == 0) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(airplaneTypeList, HttpStatus.OK);
	}	
}