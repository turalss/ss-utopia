package com.utopia.controller;

import java.util.List;

import com.utopia.model.UtopiaInstance;
import com.utopia.service.UtopiaInstanceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/instances")
public class UtopiaInstanceController {
  
	@Autowired
	UtopiaInstanceService utopiaInstanceService;

	@GetMapping
	public ResponseEntity<List<UtopiaInstance>> findAll() {
		List<UtopiaInstance> list = utopiaInstanceService.findAll();
		if (list.isEmpty()) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@GetMapping("/{uri}")
	public ResponseEntity<UtopiaInstance> findByUri(@PathVariable String uri) {
		UtopiaInstance instance = utopiaInstanceService.findInstanceByUri(uri);
		if (instance == null) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(instance, HttpStatus.OK);
  }
  
  @GetMapping("/status/{status}")
	public ResponseEntity<List<UtopiaInstance>> findByStatus(@PathVariable String status) {
		List<UtopiaInstance> instance = utopiaInstanceService.findInstancesByStatus(status);
		if (instance == null) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(instance, HttpStatus.OK);
	}

	@GetMapping("/type/{type}")
	public ResponseEntity<List<UtopiaInstance>> findByType(@PathVariable String type) {
		List<UtopiaInstance> instance = utopiaInstanceService.findInstancesByType(type);
		if (instance == null) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(instance, HttpStatus.OK);
	}
}
