package com.skilldistillery.guitars.data;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.skilldistillery.guitars.entities.Guitar.Guitar;

class GuitarDAOTest {
	private static GuitarDaoJpaImpl dao;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		dao = new GuitarDaoJpaImpl();
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	dao = null;
	}

	

@Test
@DisplayName("Test Create Guitar Method")
void test() {
	Guitar guitar = new Guitar();
	guitar.setManufacturer("testMan");
	guitar.setModel("testmodel");
	guitar.setIntonation(1);
	guitar.setNotes("test notes");
	guitar.setPrice(19.99);
	guitar.setProjection(2);
	guitar.setStore("test store");
	guitar.setString("Nylon test");
	guitar.setStyle("style test");
	guitar.setTone(3);
	
Guitar up = dao.addGuitar(guitar);
	assertNotNull(up);
	assertEquals(up.getManufacturer(), guitar.getManufacturer());
	assertEquals(up.getPrice(), guitar.getPrice());
	assertNotEquals(0, up.getId());
	
}
@Test
@DisplayName("Test Update Guitar Method")
void test1() {
	
}
@Test
@DisplayName("Test Delete Guitar Method")
void test2() {
	
}



}
