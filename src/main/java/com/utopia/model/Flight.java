package com.utopia.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "flight")
public class Flight {
	
	@Id
	@Column(name = "id")
	private int id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "airplane_id")
	private Airplane airplane;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "route_id")
	private Route route;
	
	@Column
	private Timestamp departureTime;
	
	@Column
	private int reservedSeats;
	
	@Column
	private float seatPrice;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			name = "flight_bookings",
			joinColumns = @JoinColumn(name = "flight_id"),
			inverseJoinColumns = @JoinColumn(name = "booking_id"))
	private List<Booking> guests;
	
	
	public Flight() {}


	public Flight(int id, Airplane airplane, Route route, Timestamp departureTime, int reservedSeats, float seatPrice,
			List<Booking> guests) {
		super();
		this.id = id;
		this.airplane = airplane;
		this.route = route;
		this.departureTime = departureTime;
		this.reservedSeats = reservedSeats;
		this.seatPrice = seatPrice;
		this.guests = guests;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Airplane findAirplane() {
		return airplane;
	}


	public void setAirplane(Airplane airplane) {
		this.airplane = airplane;
	}


	public Route getRoute() {
		return route;
	}


	public void setRoute(Route route) {
		this.route = route;
	}


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


	public List<Booking> getGuests() {
		return guests;
	}


	public void setGuests(List<Booking> guests) {
		this.guests = guests;
	}

	

	

	

}
