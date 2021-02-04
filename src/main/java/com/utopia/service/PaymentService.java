package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Payments;
import com.utopia.repository.PaymetRepository;

@Service
public class PaymentService {
	
	@Autowired
	PaymetRepository paymetRepository;
	
	public List<Payments> getAll(){
		return paymetRepository.findAll();
		
	}

}
