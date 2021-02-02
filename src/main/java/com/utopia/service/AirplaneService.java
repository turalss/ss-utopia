package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Airplane;
import com.utopia.repository.AirplaneRepository;

@Service
public class AirplaneService {
	
	@Autowired
	private AirplaneRepository airplaneRepository;

	public List<Airplane> getAllAirplanes() {
		return airplaneRepository.getAllAirplanes();
	}
	
	public Airplane getAirplaneWithId(Integer id) {
		return airplaneRepository.getAirplaneWithId(id);
	}
	
	public List<Airplane> getAllAirplanesWithTypeId(Integer type_id) {
		return airplaneRepository.getAirplanesWithTypeId(type_id);
	}
}