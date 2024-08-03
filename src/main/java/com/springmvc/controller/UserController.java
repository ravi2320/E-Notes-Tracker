package com.springmvc.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.Notes;
import com.springmvc.entity.User;

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
	public String viewNotes(HttpSession session, Model model) {
		User user = (User)session.getAttribute("userObj");
		List<Notes> notes = userDao.getNotesByUser(user);
		model.addAttribute("list", notes);
		return "view_notes";
	}

	@RequestMapping("/editNotes")
	public String editNotes(@RequestParam("id") int id, HttpSession session, Model model) {
		Notes n = userDao.getNotesById(id);
		model.addAttribute("notes", n);
		return "edit_notes";
	}
	
	@RequestMapping(path = "updateNotes", method = RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes notes, HttpSession session) {
		User user = (User)session.getAttribute("userObj");
		notes.setUser(user);
		notes.setDate(LocalDateTime.now().toString());
		userDao.editNotes(notes);
		session.setAttribute("msg", "Notes Updated Successfully...!");
		return "redirect:viewNotes";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userObj");
		session.setAttribute("msg1", "User Logout Successfully...!");
		return "login";
	}
	
	@RequestMapping(path="/saveNotes", method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes n, HttpSession session) {
		User user = (User) session.getAttribute("userObj");
		userDao.saveNotes(n, user);
		session.setAttribute("msg", "Notes Added Successfully...!");
		return "redirect:addNotes";
	}
	
	@RequestMapping("/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id, HttpSession session) {
		userDao.deleteNotes(id);
		session.setAttribute("msg", "Notes Deleted Successfully...!");
		return "redirect:viewNotes";
	}
}
