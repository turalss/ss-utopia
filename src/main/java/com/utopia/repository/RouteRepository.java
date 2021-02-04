package com.utopia.repository;

import java.util.List;

import com.utopia.model.Route;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RouteRepository extends JpaRepository<Route, Integer> {
	
	@Query(value="SELECT * FROM route", nativeQuery=true)
	List<Route> findAllRoutes();
	
	@Query(value="SELECT * FROM route WHERE id = ?1", nativeQuery=true)
	Route findRouteById(Integer id);
	
	@Query(value="SELECT * FROM route WHERE destination_id = ?1", nativeQuery=true)
  List<Route> findRoutesByDestinationIataCode(String code);
  
  @Query(value="SELECT * FROM route WHERE origin_id = ?1", nativeQuery=true)
  List<Route> findRoutesByOriginIataCode(String code);
  
  @Query(value="SELECT * FROM route WHERE origin_id = ?1 AND destination_id = ?2", nativeQuery=true)
	List<Route> findRoutesByDestinationIataCodeAndOriginIataCode(String originCode, String destinationCode);
}