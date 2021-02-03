package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Airplane;
import com.utopia.model.AirplaneType;
import com.utopia.repository.AirplaneRepository;
import com.utopia.repository.AirplaneTypeRepository;

@Service
public class AirplaneService {
	
	@Autowired
	private AirplaneRepository airplaneRepository;
	@Autowired
	private AirplaneTypeRepository airplaneTypeRepository;

	public List<Airplane> getAllAirplanes() {
		return airplaneRepository.getAllAirplanes();
	}
	
	public Airplane getAirplaneWithId(Integer id) {
		return airplaneRepository.getAirplaneWithId(id);
	}
	
	public List<Airplane> getAllAirplanesWithTypeId(Integer id) {
		return airplaneRepository.getAirplanesWithTypeId(id);
	}

	public List<AirplaneType> getAllAirplaneTypes() {
		return airplaneTypeRepository.getAllAirplaneTypes();
	}
	
	public AirplaneType getAirplaneTypeWithId(Integer id) {
		return airplaneTypeRepository.getAirplaneTypeWithId(id);
	}
}