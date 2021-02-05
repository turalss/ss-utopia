package com.utopia.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "airplane")
public class Airplane {

	@Id
	@Column(name = "id")
	private Integer id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "type_id", referencedColumnName = "id")
	private AirplaneType airplaneType;

	public Airplane(){}
	public Airplane(Integer id, AirplaneType airplaneType) {
		super();
		this.setId(id);
		this.setAirplaneType(airplaneType);
	}

	// id
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	// airplaneType
	public AirplaneType findAirplaneType() {
		return airplaneType;
	}

	public void setAirplaneType(AirplaneType airplaneType) {
		this.airplaneType = airplaneType;
	}
}