package com.utopia.service;

import com.utopia.exeptions.AirportNotFoundException;
import com.utopia.model.Airport;
import com.utopia.repository.AirportRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AirportService {

  @Autowired
  AirportRepository airportRepository;

  public List<Airport> findAllAirports() {
    return airportRepository.findAllAirports();
  }

  public Airport findAirportById(String airportId) {
    return airportRepository.findAirportById(airportId);
  }

  public Airport createAirport(Airport airport) {
    if (findAirportById(airport.getIataId()) == null) {
      return airportRepository.createAirport(
        airport.getIataId(),
        airport.getName(),
        airport.getCityCode(),
        airport.getCityName(),
        airport.getCountryCode(),
				airport.getCountryName(),
				airport.getTimezone(),
        airport.getLat(),
        airport.getLng()
      );
    } else {
      return null;
    }
  }

  public void deteleAirport(Airport airport) throws AirportNotFoundException {
    if (airport == null) {
      throw new AirportNotFoundException("Airport not found");
    }
    airportRepository.deleteAirportById(airport.getIataId());
  }
}
