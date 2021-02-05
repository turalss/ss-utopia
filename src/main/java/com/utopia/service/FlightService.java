package com.utopia.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Flight;
import com.utopia.repository.FlightRepository;

@Service
public class FlightService {
	

	@Autowired
	private FlightRepository flightRepository;
	
	public List<Flight> findAllFlights() {
		return flightRepository.findAllFlights();
	}
	
	public List<Flight> getFlightsByDate(Date date){
		return flightRepository.findFlightsByDate(date);
	}
	
	public List<Flight> getFlightsByOrigDest(String origin, String destination){
		return flightRepository.findFlightsByOrigDest(origin, destination);
	}

}
