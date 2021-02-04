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
	UtopiaInstanceService utopiaInstanceService;
	@Autowired
	private AirplaneRepository airplaneRepository;
	@Autowired
	private AirplaneTypeRepository airplaneTypeRepository;

	public List<Airplane> findAllAirplanes() {
		return airplaneRepository.findAllAirplanes();
	}
	
	public Airplane findAirplaneById(Integer id) {
		return airplaneRepository.findAirplaneById(id);
	}
	
	public List<Airplane> findAllAirplanesWithTypeId(Integer id) {
		return airplaneRepository.findAirplanesByTypeId(id);
	}

	public List<AirplaneType> findAllAirplaneTypes() {
		return airplaneTypeRepository.findAllAirplaneTypes();
	}
	
	public AirplaneType findAirplaneTypeById(Integer id) {
		return airplaneTypeRepository.findAirplaneTypeById(id);
	}
}