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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Guitar updateGuitar(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteGuitar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
