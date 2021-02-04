package com.utopia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.Payments;

@Repository
public interface PaymetRepository extends JpaRepository<Payments, Integer> {
	
}
