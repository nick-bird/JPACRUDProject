package com.skilldistillery.guitars.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.guitars.data.GuitarDAO;
import com.skilldistillery.guitars.entities.Guitar.Guitar;

@Controller
public class GuitarController {
	
	@Autowired
	private GuitarDAO dao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("test", dao.findById(1));
		return "index";
	}
	
	@RequestMapping(path="addguitarform.do")
	public String addGuitarForm(Guitar guitar, Model model) {
		model.addAttribute("guitar", guitar);
		return "addGuitarForm";
	}
	
	@RequestMapping(path = "addguitar.do")
	public String addGuitar(Guitar guitar, Model model) {
		guitar = dao.addGuitar(guitar);
		model.addAttribute("guitar", guitar);
		return "addGuitarResult";
	}
	
	@RequestMapping(path = "deleteguitar.do")
	public String deleteGuitar(int id) {
		boolean isDeleted = dao.deleteGuitar(id);
		return "deleteResult";
	}
	
	@RequestMapping(path = "updateguitar.do")
	public String updateGuitar(int id, Guitar guitar, Model model) {
		Guitar updatedGuitar = dao.updateGuitar(id, guitar);
		model.addAttribute("guitar", updatedGuitar);
		return "updateResult";
	}

}
