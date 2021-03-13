package com.skilldistillery.guitars.data;

import java.util.List;

import com.skilldistillery.guitars.entities.Guitar.Guitar;

public interface GuitarDAO {

	Guitar findById(int id);
	List<Guitar> findAll();
	
	Guitar addGuitar(Guitar guitar);
	
	Guitar updateGuitar(int id, Guitar ug);
	
	boolean deleteGuitar(int id);
}
