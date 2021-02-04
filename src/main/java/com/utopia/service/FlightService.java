package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Flight;
import com.utopia.repository.FlightRepository;

@Service
public class FlightService {
	
	@Autowired
	UtopiaInstanceService utopiaInstanceService;

	@Autowired
	private FlightRepository flightRepository;
	
	public List<Flight> findAllFlights() {
		return flightRepository.findAllFlights();
	}

}
