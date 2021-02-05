package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.utopia.model.AirplaneType;

@Repository
public interface AirplaneTypeRepository extends JpaRepository<AirplaneType, Integer> {
	
	@Query(value="SELECT * FROM airplane_type", nativeQuery=true)
	List<AirplaneType> findAllAirplaneTypes();
	
	@Query(value="SELECT * FROM airplane_type WHERE id = ?1", nativeQuery=true)
	AirplaneType findAirplaneTypeById(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity = ?1", nativeQuery=true)
	List<AirplaneType> findAirplaneTypesByMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity > ?1", nativeQuery=true)
	List<AirplaneType> findAirplaneTypesByGreaterThanMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity >= ?1", nativeQuery=true)
	List<AirplaneType> findAirplaneTypesByGreaterThanOrEqualToMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity < ?1", nativeQuery=true)
	List<AirplaneType> findAirplaneTypesByLessThanMaxCapacity(Integer id);
	
	@Query(value="SELECT * FROM airplane_type WHERE max_capacity <= ?1", nativeQuery=true)
	List<AirplaneType> findAirplaneTypesByLessThanOrEqualToMaxCapacity(Integer id);
}