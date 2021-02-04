package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.Payments;
import com.utopia.service.PaymentService;

@RestController
@RequestMapping(value = "/payments")
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@GetMapping
	public ResponseEntity<List<Payments>> getAll(){
		return new ResponseEntity<>(paymentService.getAll(), HttpStatus.OK);
	}

	

}
