package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "airport")
public class Airport {
	@Id
	@Column(name = "id")
	private Integer id;

	@Column(name = "code")
	private String aiportCode;

	@Column(name = "name")
	private String aiportName;

	@Column(name = "cityCode")
	private String cityCode;

	@Column(name = "cityName")
	private String cityName;

	@Column(name = "countryCode")
	private String countryCode;

	@Column(name = "countryName")
	private String countryName;

	@Column(name = "timezone")
	private Integer timezone;

	@Column(name = "lat")
	private Float lat;

	@Column(name = "lng")
	private Float lng;
	
	public Airport() {}
	public Airport(String aiportCode, String cityCode) {
		super();
		this.aiportCode = aiportCode;
		this.cityCode = cityCode;
	}

	public String getAiportCode() {
		return aiportCode;
	}

	public void setAiportCode(String aiportCode) {
		this.aiportCode = aiportCode;
	}

	public String getCity() {
		return cityCode;
	}

	public void setCity(String cityCode) {
		this.cityCode = cityCode;
	}
}
