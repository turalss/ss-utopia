package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "booking_payment")
public class Payments {

	@Id
	@Column(name = "booking_id")
	private Integer bookingId;
	@Column(name = "stripe_id")
	private String stripeId;
	@Column(name = "refunded")
	private int isRefunded;
	
	public Payments() {}

	public Payments(Booking booking, String stripeId, int isRefunded) {
		super();
		this.bookingId = booking.getId();
		this.stripeId = stripeId;
		this.isRefunded = isRefunded;
	}

	public Integer getBookingId() {
		return bookingId;
	}

	public void setBookingId(Booking booking) {
		this.bookingId = booking.getId();
	}

	public String getStripeId() {
		return stripeId;
	}

	public void setStripeId(String stripeId) {
		this.stripeId = stripeId;
	}

	public int getIsRefunded() {
		return isRefunded;
	}

	public void setIsRefunded(int isRefunded) {
		this.isRefunded = isRefunded;
	}

	

}
