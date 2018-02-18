package org.javaBankAppCode;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/deposit")
public class Deposit extends HttpServlet
{
	private static final long serialVersionUID = -3902544510269232126L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String faccno="";
		System.out.println("checking deposit 1");
	int famt=Integer.parseInt(req.getParameter("amount"));
	int fcamt=Integer.parseInt(req.getParameter("camount"));
	
	String selqry="select * from newaccount where ACCOUNTNO=?";
	String updateqry="update newaccount set AMOUNT=? where ACCOUNTNO=?";
	
	//HttpSession ses=req.getSession(false);
	//String faccno=(String) ses.getAttribute("userlogin");
	//System.out.println("accno to deposit: "+faccno);
	
	HttpSession ses= req.getSession(false);
	
	if(ses.getAttribute("userlogin") == null){
		resp.sendRedirect("loginpage.jsp");
	}else{
		
		faccno=(String)ses.getAttribute("userlogin");
	}
	
	String userName= null;
	String sessionID=null;
	
	Cookie []cookies=req.getCookies();
	if(cookies!=null){
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("userlogin"))
				userName=cookie.getValue();
			if(cookie.getName().equals("JSESSIONID"))
				sessionID=cookie.getValue();
		}
	}else{
		sessionID=ses.getId();
	}
	
	
	int prevbalance=0;
	String dbaccno="";
	System.out.println("checking deposit 2");
	try {
			Connection con= ConnectionFunction.getConnection();
			PreparedStatement ps = con.prepareStatement(selqry);
			
			ps.setString(1,faccno);
			ResultSet rs= ps.executeQuery();
			while(rs.next()){
				dbaccno=rs.getString(1);
				prevbalance=rs.getInt(5);
			}
			
			if(faccno.equals(dbaccno)){
				
				int newdeposit=famt+prevbalance;
				PreparedStatement psupdt=con.prepareStatement(updateqry);
				psupdt.setInt(1, newdeposit);
				psupdt.setString(2, dbaccno);
				psupdt.executeUpdate();
				
				resp.getWriter().write(newdeposit);
				
				System.out.println("checking deposit 3");	
				
			}else{
				System.out.println("checking deposit 4");
				resp.getWriter().write("error");
				
			}
		
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	
	}
	
}