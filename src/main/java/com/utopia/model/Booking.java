package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "booking")
public class Booking {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@JoinColumn(name = "confirmation_code")
  private String confirmationCode;

  @Column(name = "status")
  private String status;

  public Booking() {}
	public Booking(Integer id, String confirmationCode, String status) {
		super();
    this.setId(id);
    this.setConfirmationCode(confirmationCode);
    this.setStatus(status);
	}

	// Id
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	// Confirmation Code
	public String getConfirmationCode() {
		return confirmationCode;
	}

	public void setConfirmationCode(String confirmationCode) {
		this.confirmationCode = confirmationCode;
  }
  
  	// Status
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}