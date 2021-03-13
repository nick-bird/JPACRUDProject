package com.skilldistillery.guitars.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.guitars.entities.Guitar.Guitar;

class GuitarTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Guitar guitar;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	emf = Persistence.createEntityManagerFactory("GuitarPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
	em = emf.createEntityManager();
	guitar = em.find(Guitar.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	em.close();
	}

	@Test
	@DisplayName("Test Guitar entity")
	void test() {
		assertNotNull(guitar);
		assertEquals("Yamahah", guitar.getManufacturer());
		assertEquals(1000.45, guitar.getPrice());
		assertEquals("aaa", guitar.getModel());
		assertEquals("gc", guitar.getStore());
		assertEquals("Classical", guitar.getStyle());
		assertEquals("some text here", guitar.getNotes());
		assertEquals(1, guitar.getTone());
		assertEquals(7, guitar.getIntonation());
		assertEquals(5, guitar.getProjection());
		
	}

}
