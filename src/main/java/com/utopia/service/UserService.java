package com.utopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.utopia.model.User;
import com.utopia.model.UserRole;
import com.utopia.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	public List<User> findAllUsersByRoleId(UserRole userRole){
		return userRepository.findUserByRoleIdQuery(userRole.getId());
	};
	
	public User findUserByUsername(User user) {
		return userRepository.findUserByUsernameQuery(user.getUsername());
	};
	
	public User findUserByEmailAdress(User user) {
		return userRepository.findUserByEmailQuery(user.getEmail());
	};
	
	public void addUser(User user) {
		userRepository.save(user);
	};
	
	public List<User> allUsers(){
		return (List<User>) userRepository.findAll();
	}
	
	
	
	

}
