package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "route")
public class Route {

	@Id
	@GeneratedValue
	@Column(name = "id")
  private Integer id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "destination_id", referencedColumnName="iata_id")
  private Airport destination;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "origin_id", referencedColumnName="iata_id")
	private Airport origin;

  public Route() {}
	public Route(Integer id, Airport origin, Airport destination) {
		super();
		this.setId(id);
    this.setOrigin(origin);
    this.setDestination(destination);
	}

	// Id
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	// Destination
	public Airport getDestination() {
		return destination;
	}

	public void setDestination(Airport airport) {
		this.destination = airport;
  }
  
  	// Origin
	public Airport getOrigin() {
		return origin;
	}

	public void setOrigin(Airport airport) {
		this.origin = airport;
	}
}