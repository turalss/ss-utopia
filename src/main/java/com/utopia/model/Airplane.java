package com.utopia.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "airplane")
public class Airplane {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "airplane_type_id", referencedColumnName = "id")
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
	public AirplaneType getAirplaneType() {
		return airplaneType;
	}

	public void setAirplaneType(AirplaneType airplaneType) {
		this.airplaneType = airplaneType;
	}

	@Override
	public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    Airplane other = (Airplane) obj;
    if (id == null) {
      if (other.getId() != null) return false;
    } else if (!id.equals(other.getId())) return false;
    return true;
	}
}