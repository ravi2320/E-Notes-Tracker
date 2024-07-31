package com.springmvc.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.springmvc.entity.User;

public class AuthHandler implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		User user = (User)request.getSession().getAttribute("userObj");
		if(user != null) {
			return true;
		}
		response.getWriter().print("<h1>Please Login...!</h1>");
		request.setAttribute("msg1", "Please Login, to Access Notes...!");
		String path = request.getContextPath() + "/login";
		response.sendRedirect(path);
		return false;
	}
}
