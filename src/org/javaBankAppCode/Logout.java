package org.javaBankAppCode;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@WebServlet("/logoutpage")
public class Logout extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doPost(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Cookie []cookies=req.getCookies();
		if(cookies!=null){
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("JSESSIONID"))
					System.out.println("JSESSION ID: "+cookie.getValue());
				
					cookie.setMaxAge(0);
					resp.addCookie(cookie);
			}
		}
		
		HttpSession ses= req.getSession(false);
		if(ses!=null)
			ses.invalidate();
		resp.sendRedirect("logout.jsp");
	
	}
}