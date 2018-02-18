package org.javaBankAppCode;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@WebServlet("/withdraw")
public class WithdrawMoney extends HttpServlet
{
	
	private static final long serialVersionUID = -7798473198105178936L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int famount =Integer.parseInt(req.getParameter("amount"));
		int fconfirmamount=Integer.parseInt(req.getParameter("camount"));
		String selqry="select * from newaccount where ACCOUNTNO=?";
		String updateqry="update newaccount set AMOUNT=? where ACCOUNTNO=?";
		String dbaccno="";
		int prevbalance=0;
		int newwithdraw=0;
		String faccno="";
		//HttpSession ses=req.getSession(false);
		//String faccno=(String) ses.getAttribute("userlogin");
		
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
		
		try {
			
				Connection con =ConnectionFunction.getConnection();
				PreparedStatement ps= con.prepareStatement(selqry);
				ps=con.prepareStatement(selqry);
				ps.setString(1,faccno);
				ResultSet rs= ps.executeQuery();
				while(rs.next()){
					dbaccno=rs.getString(1);
					prevbalance=rs.getInt(5);
				}
				
				if(prevbalance > famount){
					
					newwithdraw = prevbalance - famount;
					PreparedStatement psupdt=con.prepareStatement(updateqry);
					psupdt.setInt(1, newwithdraw);
					psupdt.setString(2, faccno);
					psupdt.executeUpdate();
					
					resp.getWriter().write(newwithdraw);
					
				}else{
					resp.getWriter().write("error");
				}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}