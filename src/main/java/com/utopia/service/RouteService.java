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

	public List<Route> findAllRoutes() {
		return routeRepository.findAllRoutes();
	}
	
	public Route findRouteById(Integer id) {
		return routeRepository.findRouteById(id);
	}
	
	public List<Route> findRoutesByDestinationIataCode(String code) {
		return routeRepository.findRoutesByDestinationIataCode(code);
	}

	public List<Route> findRoutesByOriginIataCode(String code) {
		return routeRepository.findRoutesByOriginIataCode(code);
	}
	
	public List<Route> findRoutesByDestinationIataCodeAndOriginIataCode(String originCode, String destinationCode) {
		return routeRepository.findRoutesByDestinationIataCodeAndOriginIataCode(originCode, destinationCode);
	}
}