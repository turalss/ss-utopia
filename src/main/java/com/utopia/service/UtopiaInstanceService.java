package com.utopia.service;

import java.util.List;

import com.utopia.model.UtopiaInstance;
import com.utopia.repository.UtopiaInstanceRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UtopiaInstanceService {
  
  @Autowired
  UtopiaInstanceRepository utopiaInstanceRepository;
  
  public List<UtopiaInstance> findAll(){
		return utopiaInstanceRepository.findAll();
	}
	
	public UtopiaInstance findInstanceByUri(String uri) {
		return utopiaInstanceRepository.findInstanceByUri(uri);
	}
  
  public List<UtopiaInstance> findInstancesByStatus(String status) {
		return utopiaInstanceRepository.findInstancesByStatus(status);
	}

	public List<UtopiaInstance> findInstancesByType(String type) {
		return utopiaInstanceRepository.findInstancesByType(type);
	}

	public UtopiaInstance save(UtopiaInstance instance) {
		return instance != null 
		? utopiaInstanceRepository.save(instance)
		: null;
	}
}