package com.utopia.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "flight")
public class Flight {
	
	public Flight() {
		
	}
		
	public Flight(Integer id, Airplane airPlane, Timestamp departureTime, Integer reservedSeats, Float seatPrice) {
		super();
		this.id = id;
		this.airPlane = airPlane;
		//this.routeId = routeId;
		this.departureTime = departureTime;
		this.reservedSeats = reservedSeats;
		this.seatPrice = seatPrice;
	}

	@Id
	@Column(name = "id")
	private int id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "airplane_id")
	private Airplane airPlane;
	
	/*@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "route_id")
	private Route routeId;*/
	
	@Column
	private Timestamp departureTime;
	
	@Column
	private int reservedSeats;
	
	@Column
	private float seatPrice;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Airplane getAirPlane() {
		return airPlane;
	}

	public void setAirPlane(Airplane airPlane) {
		this.airPlane = airPlane;
	}

	/*public int getRoute() {
		return routeId;
	}

	public void setRoute(int routeId) {
		this.routeId = routeId;
	}*/

	public Timestamp getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(Timestamp departureTime) {
		this.departureTime = departureTime;
	}

	public int getReservedSeats() {
		return reservedSeats;
	}

	public void setReservedSeats(int reservedSeats) {
		this.reservedSeats = reservedSeats;
	}

	public float getSeatPrice() {
		return seatPrice;
	}

	public void setSeatPrice(float seatPrice) {
		this.seatPrice = seatPrice;
	}

	

	

}
