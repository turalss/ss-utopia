package com.utopia.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "booking")
public class Booking {

	@Id
	@Column(name = "id")
  private Integer id;

  @Column(name = "staus")
  private String status;
  
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "booking_payment", referencedColumnName = "booking_id")
  private String confirmationCode;

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

	@Override
	public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    Booking other = (Booking) obj;
    if (id == null) {
      if (other.getId() != null) return false;
    } else if (!id.equals(other.getId())) return false;
    return true;
	}
}