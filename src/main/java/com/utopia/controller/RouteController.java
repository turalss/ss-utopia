// package com.utopia.controller;

// import java.util.List;

// import com.utopia.model.Route;
// import com.utopia.service.RouteService;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.HttpStatus;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// @RestController
// @RequestMapping(value = "/routes")
// public class RouteController {
	
// 	@Autowired
// 	RouteService routeService;
	
// 	@GetMapping("/all")
// 	public ResponseEntity<List<Route>> getAllRoutes(){
// 		List<Route> routeList = routeService.getAllRoutes();
// 		if(routeList.isEmpty()) {
// 			return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
// 		} else return new ResponseEntity<>(routeList, HttpStatus.OK);
//   }
// }