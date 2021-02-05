package com.utopia.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.utopia.exeptions.AirportNotFoundException;
import com.utopia.model.Airport;
import com.utopia.repository.AirportRepository;

@Service
public class AirportService {

	@Autowired
	AirportRepository airportRepository;

	public List<Airport> findAllAirports() {
		return airportRepository.findAll();
	}

	public Airport findAirportByCode(String airportCode) {
		Optional<Airport> optionalAirpot = airportRepository.findById(airportCode);
		if (optionalAirpot.isPresent()) {
			return optionalAirpot.get();
		} else
			return null;
	}

	public Airport insertAirport(Airport airport) {
		if (findAirportByCode(airport.getAiportCode()) == null) {
			return airportRepository.save(airport);
		} else {
			return null;
		}
	}

	public void deleteAirport(Airport airport) throws AirportNotFoundException {
		if (airport == null) {
			throw new AirportNotFoundException("Airport not found");
		}
		airportRepository.delete(airport);
	}

}
