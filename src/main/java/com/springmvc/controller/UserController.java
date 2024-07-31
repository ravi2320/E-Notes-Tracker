package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.Notes;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserDao userDao;

	@RequestMapping("/addNotes")
	public String addNotes() {
		return "add_notes";
	}

	@RequestMapping("/viewNotes")
	public String viewNotes() {
		return "view_notes";
	}

	@RequestMapping("/editNotes")
	public String editNotes() {
		return "edit_notes";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userObj");
		session.setAttribute("msg1", "User Logout Successfully...!");
		return "login";
	}
	
	@RequestMapping(path="/saveNotes", method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes n, HttpSession session) {
		userDao.saveNotes(n);
		session.setAttribute("msg", "Notes Added Successfully...!");
		return "redirect:/addNotes";
	}
}
