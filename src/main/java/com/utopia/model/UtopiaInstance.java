package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "utopia_instances")
public class UtopiaInstance {
  
	@Id
	@Column(name = "uri")
  private String uri;
  
  @Column(name = "status")
  private String status;

  @Column(name = "type")
  private String type;
  
  public UtopiaInstance(){}
  public UtopiaInstance(String uri, String status, String type) {
    super();
		this.uri = uri;
		this.status = status;
    this.type = type;
  }

  public String getUri() {
		return this.uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
  }

  public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
  
  public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
}