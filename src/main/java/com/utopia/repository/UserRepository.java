package com.utopia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.utopia.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	@Query(value="SELECT * FROM user WHERE role_id = ?1", nativeQuery=true)
	List<User> findUserByRoleId(int id);
	
	@Query(value="SELECT * FROM user WHERE username = ?1", nativeQuery=true)
	User findUserByUsername(String username);
	
	@Query(value="SELECT * FROM user WHERE email = ?1", nativeQuery=true)
	User findUserByEmail(String email);
	
}
