package com.utopia.controller;

import java.util.LinkedHashMap;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.User;
import com.utopia.model.UserRole;
import com.utopia.service.UserRoleService;
import com.utopia.service.UserService;

@RestController
@RequestMapping(value = "/users")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	UserRoleService userRoleService;
	
	@GetMapping("/all")
	public ResponseEntity<List<User>> getAllUsers(){
		List<User> userList = userService.allUsers();
		if(userList.size() == 0) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else return new ResponseEntity<>(userList, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public ResponseEntity<String> addUser(@RequestBody User user){
		userService.addUser(user);
		return new ResponseEntity<String>("done", HttpStatus.OK);
	}
	
	
	
}
