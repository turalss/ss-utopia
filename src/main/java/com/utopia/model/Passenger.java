package com.utopia.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "passenger")
public class Passenger {

	public Passenger() {
		
	}
	
	public Passenger(int id, String given_name, String family_name, Date dob, String gender, String address) {
		super();
		this.id = id;
		this.given_name = given_name;
		this.family_name = family_name;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
	}

	@Id
	@Column(name = "id")
	private int id;
	
	/*@OneToMany(cascade = CascadeType.ALL)
	@Column(name = "booking_id")
	private Booking booking;*/
	
	@Column
	private String given_name;
	
	@Column
	private String family_name;
	
	@Column
	private Date dob;
	
	@Column
	private String gender;
	
	@Column
	private String address;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/*public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	} */

	public String getGiven_name() {
		return given_name;
	}

	public void setGiven_name(String given_name) {
		this.given_name = given_name;
	}

	public String getFamily_name() {
		return family_name;
	}

	public void setFamily_name(String family_name) {
		this.family_name = family_name;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
