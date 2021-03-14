package com.skilldistillery.guitars.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.guitars.entities.Guitar.Guitar;

@Service
@Transactional
public class GuitarDaoJpaImpl implements GuitarDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Guitar findById(int id) {
		return em.find(Guitar.class, id);
	}

	@Override
	public List<Guitar> findAll() {
		String jdql = "SELECT g FROM Guitar g";
		return em.createQuery(jdql, Guitar.class).getResultList();
	}

	@Override
	public Guitar addGuitar(Guitar guitar) {
		if(guitar != null) {
		 try {
			em.persist(guitar);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		}
		return guitar;
	}

	@Override
	public Guitar updateGuitar(int id, Guitar ug) {
		// ug - Upgraded guitar object
		// mg - Managed guitar object
		Guitar mg = em.find(Guitar.class, id);
	
		if (ug != null) {
		
		if(ug.getManufacturer().length() > 0) {
			mg.setManufacturer(ug.getManufacturer());
		}
		
		if(ug.getPrice() != null) {
			mg.setPrice(ug.getPrice());
		}
		
		if(ug.getModel().length() > 0) {
			mg.setModel(ug.getModel());
		}
		
		if(ug.getStore().length() > 0) {
			mg.setStore(ug.getStore());
		}
		
		if(ug.getStyle().length() > 0) {
			mg.setStyle(ug.getStyle());
		}
		
		if(ug.getNotes().length() > 0) {
			mg.setNotes(ug.getNotes());
		}
		
		if(ug.getTone() != null) {
			mg.setTone(ug.getTone());
		}
		
		if(ug.getIntonation() != null) {
			mg.setIntonation(ug.getIntonation());
		}
		
		if(ug.getProjection() != null) {
			mg.setProjection(ug.getProjection());
		}
		if(ug.getString().length() > 0) {
			mg.setString(ug.getString());
		}
		
	}
		
		return mg;
	}

	@Override
	public boolean deleteGuitar(int id) {
		
		Guitar toBeDeleted = em.find(Guitar.class, id);
		em.remove(toBeDeleted);
		
		if(em.contains(toBeDeleted)) {
			return false;
		}
		
	return true;	
	}

}
