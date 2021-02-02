package com.utopia.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import com.utopia.model.UserRole;
import com.utopia.repository.UserRoleRepository;

@SpringBootTest
public class UserRoleServiceTest {
	
	private UserRole userRole;
	
	@Mock
	private UserRoleRepository userRoleRepository;

	@InjectMocks
	private UserRoleService userRoleService;
	
	@BeforeEach
	public void setup() throws Exception{
		userRole = new UserRole(1, "user");
		when(userRoleRepository.findUserRoleById(1)).thenReturn(userRole);
		when(userRoleRepository.findUserRoleById(0)).thenReturn(null);
		when(userRoleRepository.findUserRoleByName("user")).thenReturn(userRole);
		when(userRoleRepository.findUserRoleByName("none")).thenReturn(null);
	}
	
	@Test
	public void testFindUserRoleByIdSuccess() {
		assertEquals(userRoleRepository.findUserRoleById(1), userRole);
	}
	@Test
	public void testFindUserRoleByIdFailure() {
		assertEquals(userRoleRepository.findUserRoleById(0), null);
	}
	
	@Test
	public void testFindUserRoleByNameSuccess() {
		assertEquals(userRoleRepository.findUserRoleByName("user"), userRole);
	}
	@Test
	public void testFindUserRoleByNameFailure() {
		assertEquals(userRoleRepository.findUserRoleByName("none"), null);
	}
	
	
	
	

}
