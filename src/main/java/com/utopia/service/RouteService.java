package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.Route;
import com.utopia.repository.RouteRepository;

@Service
public class RouteService {
  
	@Autowired
	private RouteRepository routeRepository;

	public List<Route> getAllRoutes() {
		return routeRepository.getAllRoutes();
	}
	
	public Route getRouteWithId(Integer id) {
		return routeRepository.getRouteWithId(id);
	}
	
	public List<Route> getRoutesWithDestination(Integer id) {
		return routeRepository.getRoutesWithDestination(id);
	}

	public List<Route> getRoutesWithOrigin(Integer id) {
		return routeRepository.getRoutesWithOrigin(id);
	}
	
	public List<Route> getRoutesWithDestinationAndOrigin(Integer destinationId, Integer originId) {
		return routeRepository.getRoutesWithDestinationAndOrigin(destinationId, originId);
	}
}