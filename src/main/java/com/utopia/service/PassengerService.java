package com.utopia.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Passenger;
import com.utopia.repository.PassengerRepository;

@Service
public class PassengerService {

	@Autowired
	private PassengerRepository passengerRepository;

	public List<Passenger> findAllPassengers() {
		return (List<Passenger>) passengerRepository.findAll();
	}

	public Optional<Passenger> findById(Integer id) {
		Optional<Passenger> optional = passengerRepository.findById(id);
		if (optional.isPresent()) {
			return Optional.ofNullable(optional.get());
		}

		return Optional.empty();
	}
}
