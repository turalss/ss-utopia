package com.utopia.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.utopia.model.Passenger;
import com.utopia.repository.PassengerRepository;

@Service
public class PassengerService {

	private PassengerRepository passengerRepository;
	
	public List<Passenger> getAllPassengers(){
		return passengerRepository.getAllPassengers();
	}
	
}
