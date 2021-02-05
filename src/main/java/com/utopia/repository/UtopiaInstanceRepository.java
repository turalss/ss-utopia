package com.utopia.repository;

import java.util.List;

import com.utopia.model.UtopiaInstance;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UtopiaInstanceRepository extends JpaRepository<UtopiaInstance, Integer> {
  
  @Query(value="SELECT * FROM utopia_instances", nativeQuery=true)
	List<UtopiaInstance> findAll();
	
	@Query(value="SELECT * FROM utopia_instances WHERE uri = ?1", nativeQuery=true)
	UtopiaInstance findInstanceByUri(String uri);
	
	@Query(value="SELECT * FROM utopia_instances WHERE status = ?1", nativeQuery=true)
	List<UtopiaInstance> findInstancesByStatus(String status);

	@Query(value="SELECT * FROM utopia_instances WHERE type = ?1", nativeQuery=true)
	List<UtopiaInstance> findInstancesByType(String type);
}
