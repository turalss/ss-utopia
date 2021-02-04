package com.utopia.repository;

import java.util.List;

import com.utopia.model.Route;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RouteRepository extends CrudRepository<Route, Integer> {
	
	@Query(value="SELECT * FROM route", nativeQuery=true)
	List<Route> getAllRoutes();
	
	@Query(value="SELECT * FROM route WHERE id = 1?", nativeQuery=true)
	Route getRouteWithId(Integer id);
	
	@Query(value="SELECT * FROM route WHERE destination_id = 1?", nativeQuery=true)
  List<Route> getRoutesWithDestination(Integer id);
  
  @Query(value="SELECT * FROM route WHERE origin_id = 1?", nativeQuery=true)
  List<Route> getRoutesWithOrigin(Integer id);
  
  @Query(value="SELECT * FROM route WHERE destination_id = 1? AND origin_id = 2?", nativeQuery=true)
	List<Route> getRoutesWithDestinationAndOrigin(Integer destinationId, Integer originId);
}