package com.utopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.utopia.model.User;
import com.utopia.model.UserRole;
import com.utopia.service.UserRoleService;
import com.utopia.service.UserService;

@RestController
@RequestMapping(value = "/api")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	UserRoleService userRoleService;

	@GetMapping
	public ResponseEntity<List<User>> getAllUsers() {
		List<User> userList = userService.allUsers();

		if (userList.size() == 0) {
			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
		} else
			return new ResponseEntity<>(userList, HttpStatus.OK);
	}

	@PostMapping("/new")
	public ResponseEntity<String> inserUser(@RequestBody User user) throws NullPointerException {
		UserRole ur = userRoleService.findUserRoleById(1);
		user.setUserRole(ur);
		userService.saveUser(user);
		return new ResponseEntity<String>("done", HttpStatus.OK);

	}
}
