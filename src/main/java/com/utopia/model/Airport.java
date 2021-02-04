package com.utopia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "airport")
public class Airport {

  @Id
  @GeneratedValue
  @Column(name = "id")
  private Integer id;

  @Column(name = "iata_id")
  private String iataId;

  @Column(name = "name")
  private String name;

  @Column(name = "city_code")
  private String cityCode;

  @Column(name = "city_name")
  private String cityName;

  @Column(name = "country_code")
  private String countryCode;

  @Column(name = "country_name")
  private String countryName;

  @Column(name = "timezone")
  private Integer timezone;

  @Column(name = "lat")
  private Float lat;

  @Column(name = "lng")
  private Float lng;

  public Airport() {}

  public Airport(
    Integer id,
    String iataId,
    String name,
    String cityCode,
    String cityName,
    String countryCode,
    String countryName,
    Integer timezone,
    Float lat,
    Float lng
  ) {
    super();
    this.id = id;
    this.iataId = iataId;
    this.name = name;
    this.cityCode = cityCode;
    this.cityName = cityName;
    this.countryCode = countryCode;
    this.countryName = countryName;
    this.timezone = timezone;
    this.lat = lat;
    this.lng = lng;
  }

  public String getIataId() {
    return this.iataId;
  }

  public void setIataId(String iataId) {
    this.iataId = iataId;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getCityCode() {
    return this.cityCode;
  }

  public void setCityCode(String cityCode) {
    this.cityCode = cityCode;
  }

  public String getCityName() {
    return this.cityName;
  }

  public void setCityName(String cityName) {
    this.cityName = cityName;
  }

  public String getCountryCode() {
    return this.countryCode;
  }

  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  public String getCountryName() {
    return this.countryName;
  }

  public void setCountryName(String countryName) {
    this.countryName = countryName;
  }

  public Integer getTimezone() {
    return this.timezone;
  }

  public void setTimezone(Integer timezone) {
    this.timezone = timezone;
  }

  public Float getLat() {
    return this.lat;
  }

  public void setLat(Float lat) {
    this.lat = lat;
  }

  public Float getLng() {
    return this.lng;
  }

  public void setLng(Float lng) {
    this.lng = lng;
  }
}