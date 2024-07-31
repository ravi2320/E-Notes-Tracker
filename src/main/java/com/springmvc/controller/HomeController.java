package com.springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.User;

@Controller
public class HomeController {
	
	@Autowired
	private UserDao dao;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	/*
	 * @RequestMapping("/addNotes") public String addNotes() { return "add_notes"; }
	 * 
	 * @RequestMapping("/viewNotes") public String viewNotes() { return
	 * "view_notes"; }
	 * 
	 * @RequestMapping("/editNotes") public String editNotes() { return
	 * "edit_notes"; }
	 */
	
	@RequestMapping(path = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, HttpSession session) {
		System.out.println(user);
		
		dao.saveUser(user);
		session.setAttribute("msg", "Registration Successful...!");
		
		return "redirect:/register";
	}
	
	@RequestMapping(path = "/loginUser", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
		User user = dao.login(email, password);
		if(user != null) {
			session.setAttribute("userObj", user);
			return "redirect:/profile";
		}
		
		session.setAttribute("msg", "Invalid Username and Password...!");
		return "login";
	}
	
	@RequestMapping("/profile")
	public String profile() {
		return "profile";
	}
}
