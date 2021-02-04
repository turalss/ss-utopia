package com.utopia.model;

import java.util.List;

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
@Table(name = "booking")
public class Booking {

	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "is_active")
	private Integer isActive;

	@Column(name = "confirmation_code")
	private String confirmationCode;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			name = "flight_bookings",
			joinColumns = @JoinColumn(name = "booking_id"),
			inverseJoinColumns = @JoinColumn(name = "flight_id"))
	private List<Flight> flights;

	public Booking() {
		
	}
	
	public Booking(Integer id, Integer isActive, String confirmationCode) {
		super();
		this.id = id;
		this.isActive = isActive;
		this.confirmationCode = confirmationCode;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIsActive() {
		return isActive;
	}

	public void setIsActive(Integer isActive) {
		this.isActive = isActive;
	}

	public String getConfirmationCode() {
		return confirmationCode;
	}

	public void setConfirmationCode(String confirmationCode) {
		this.confirmationCode = confirmationCode;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Booking other = (Booking) obj;
		if (id == null) {
			if (other.getId() != null)
				return false;
		} else if (!id.equals(other.getId()))
			return false;
		return true;
	}
}