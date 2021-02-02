package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.AirplaneType;
import com.utopia.repository.AirplaneTypeRepository;

@Service
public class AirplaneTypeService {
	
	@Autowired
	private AirplaneTypeRepository airplaneTypeRepository;

	public List<AirplaneType> getAllAirplaneTypes() {
		return airplaneTypeRepository.getAllAirplaneTypes();
	}
	
	public Airplane getAirplaneWithId(Integer id) {
		return airplaneRepository.getAirplaneWithId(id);
	}
	
	public List<Airplane> getAllAirplanesWithTypeId(Integer type_id) {
		return airplaneRepository.getAirplanesWithTypeId(type_id);
	}
}