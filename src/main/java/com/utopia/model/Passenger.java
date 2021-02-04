package com.utopia.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "passenger")
public class Passenger {

	public Passenger() {}
	public Passenger(int id, Integer bookingId, String firstName, String lastName, Date dateOfBirth, String sex, String address) {
		super();
		this.id = id;
		this.bookingId = bookingId; 
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.sex = sex;
		this.address = address;
	}

	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "booking_id")
	private Integer bookingId;
	
	@Column(name = "name_first")
	private String firstName;
	
	@Column(name = "name_last")
	private String lastName;
	
	@Column(name = "date_of_birth")
	private Date dateOfBirth;
	
	@Column(name = "sex")
	private String sex;
	
	@Column(name = "address")
	private String address;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getBooking() {
		return bookingId;
	}

	public void setBooking(Integer bookingId) {
		this.bookingId = bookingId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}