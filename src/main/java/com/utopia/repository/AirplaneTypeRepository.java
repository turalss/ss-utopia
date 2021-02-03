package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.AirplaneType;

@Repository
public interface AirplaneTypeRepository extends CrudRepository<AirplaneType, Integer> {
	
	@Query(value="SELECT * FROM airplane_type", nativeQuery=true)
	List<AirplaneType> getAllAirplaneTypes();
	
	@Query(value="SELECT * FROM airplane_type WHERE id = 1?", nativeQuery=true)
	AirplaneType getAirplaneTypeWithId(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity = 1?", nativeQuery=true)
	List<AirplaneType> getAirplaneTypesWithMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity > 1?", nativeQuery=true)
	List<AirplaneType> getAirplaneTypesWithGreaterThanMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity >= 1?", nativeQuery=true)
	List<AirplaneType> getAirplaneTypesWithGreaterThanOrEqualToMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity < 1?", nativeQuery=true)
	List<AirplaneType> getAirplaneTypesWithLessThanMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity <= 1?", nativeQuery=true)
	List<AirplaneType> getAirplaneTypesWithLessThanOrEqualToMaxCapacity(Integer id);
}