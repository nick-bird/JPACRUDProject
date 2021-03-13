package com.skilldistillery.guitars.entities.Guitar;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Guitar {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String manufacturer;
	
	private Double price;
	
	private String model;
	
	@Column(name = "store_name")
	private String store;
	
	private String style;
	
	@Column(name = "play_notes")
	private String notes;
	
	@Column(name = "tone_rating")
	private Integer tone;
	
	@Column(name = "intonation_rating")
	private Integer intonation;
	
	@Column(name = "projection_rating")
	private Integer projection;
	
	@Column(name = "string_type")
	private String string;
	
	

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Integer getTone() {
		return tone;
	}

	public void setTone(Integer tone) {
		this.tone = tone;
	}

	public Integer getIntonation() {
		return intonation;
	}

	public void setIntonation(Integer intonation) {
		this.intonation = intonation;
	}

	public Integer getProjection() {
		return projection;
	}

	public void setProjection(Integer projection) {
		this.projection = projection;
	}

	public String getString() {
		return string;
	}

	public void setString(String string) {
		this.string = string;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	

	

	@Override
	public String toString() {
		return "Guitar [id=" + id + ", manufacturer=" + manufacturer + ", price=" + price + ", model=" + model
				+ ", store=" + store + ", style=" + style + ", notes=" + notes + ", tone=" + tone + ", intonation="
				+ intonation + ", projection=" + projection + ", string=" + string + "]";
	}

	public Guitar() {
		super();
	}



}
