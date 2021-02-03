package com.utopia.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "route")
public class Route {

	@Id
	@Column(name = "id")
  private Integer id;
  
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "destination", referencedColumnName = "id")
  private Airport destination;
  
  @ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "origin", referencedColumnName = "id")
	private Airport origin;

  public Route() {}
	public Route(Integer id, Airport destination, Airport origin) {
		super();
		this.setId(id);
    this.setDestination(destination);
    this.setOrigin(origin);
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

	@Override
	public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    Route other = (Route) obj;
    if (id == null) {
      if (other.getId() != null) return false;
    } else if (!id.equals(other.getId())) return false;
    return true;
	}
}