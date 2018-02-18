package org.javaBankAppCode;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/userregistration")
public class NewUserRegistration extends HttpServlet
{

	private static final long serialVersionUID = 1252370691075432488L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		System.out.println("beginning execution");
	String funame=req.getParameter("uname");
	String femail=req.getParameter("eid");
	String fpass=req.getParameter("password");
	String frepass= req.getParameter("repassword");
	int famt=Integer.parseInt(req.getParameter("amount"));
	String fadd=req.getParameter("address");
	String fph=req.getParameter("phone");
	BigInteger in=new BigInteger(fph);
	System.out.println("Printing email id: "+femail);
	//fph=Integer.parseInt();
	
	String qry="insert into newaccount values(?,?,?,?,?,?,?,?)";
	
	Connection con=null;
	PreparedStatement ps=null;
	
	try {
		String newaccno=AccountNumberGenerator.generateAccountNo();
			con=ConnectionFunction.getConnection();
			ps=con.prepareStatement(qry);
			ps.setString(1, newaccno);
			ps.setString(2, funame);
			ps.setString(3, fpass);
			ps.setString(4, frepass);
			ps.setInt(5, famt);
			ps.setString(6, fadd);
			ps.setBigDecimal(7, new BigDecimal(fph));
			ps.setString(8, femail);
			
			
			int update=ps.executeUpdate();
			System.out.println("Data inserted : "+update);
			if(update == 1){
				String status="success";	
				resp.setContentType("text/plain");
				resp.getWriter().write(newaccno);
			}else{
				
				String badstatus="failed";
				resp.setContentType("text/plain");
				resp.getWriter().write(badstatus);
				
			}
			
	} catch (Exception e) {
	
		e.printStackTrace();
	}
		
	}

}