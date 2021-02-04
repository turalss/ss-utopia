package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Airplane;

@Repository
public interface AirplaneRepository extends JpaRepository<Airplane, Integer> {
	
	@Query(value="SELECT * FROM airplane", nativeQuery=true)
	List<Airplane> findAllAirplanes();
	
	@Query(value="SELECT * FROM airplane WHERE id = ?1", nativeQuery=true)
	Airplane findAirplaneById(Integer id);
	
	@Query(value="SELECT * FROM airplane WHERE type_id = ?1", nativeQuery=true)
	List<Airplane> findAirplanesByTypeId(Integer id);
	
}