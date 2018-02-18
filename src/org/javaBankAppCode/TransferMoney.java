package org.javaBankAppCode;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Savepoint;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@WebServlet("/transfer")
public class TransferMoney extends HttpServlet
{

	private static final long serialVersionUID = -7222867404819146436L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String selqry="select * from newaccount where ACCOUNTNO=?";
		String updateqry="update newaccount set AMOUNT=? where ACCOUNTNO=?";
		String taccnofrom="";
		//HttpSession ses=req.getSession(false);
		//String taccnofrom=(String) ses.getAttribute("userlogin");
		//String taccnofrom="SBI8278";
		String taccnoto=req.getParameter("taccno");
		
		HttpSession ses= req.getSession(false);
		
		if(ses.getAttribute("userlogin") == null){
			resp.sendRedirect("loginpage.jsp");
		}else{
			
			taccnofrom=(String)ses.getAttribute("userlogin");
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
		
		int famttransfer=Integer.parseInt(req.getParameter("amount"));
		int updatebalanceto=0,updatebalancefrom=0;
		
		String dbtaccno=null;
		int dbtamountfrom=0;
		int dbtamountto=0;
		Savepoint sp=null;
	
		try {
				Connection con=ConnectionFunction.getConnection();
				PreparedStatement ps1=con.prepareStatement(selqry);
				ps1.setString(1, taccnoto);
				ResultSet rs1= ps1.executeQuery();
				while(rs1.next()){
					dbtaccno=rs1.getString(1);
					dbtamountto=rs1.getInt(5);
				}
				if((taccnoto.equals(dbtaccno)) && !(taccnofrom.equals(taccnoto)) ){
					
					PreparedStatement ps2=con.prepareStatement(selqry);
					ps2.setString(1, taccnofrom);
					ResultSet rs2=ps2.executeQuery();
					while(rs2.next()){
						dbtamountfrom=rs2.getInt(5);
					}
						if(famttransfer < dbtamountfrom){
						
						sp=con.setSavepoint();
						updatebalanceto = famttransfer+ dbtamountto;
						System.out.println(updatebalanceto);
						
						PreparedStatement ps3=con.prepareStatement(updateqry);
						
						
						ps3.setInt(1, updatebalanceto);
						ps3.setString(2, taccnoto);
						
						int bal_transferred_result=ps3.executeUpdate();
						
						updatebalancefrom=dbtamountfrom-famttransfer;
						PreparedStatement ps4=con.prepareStatement(updateqry);
						
						ps4.setInt(1, updatebalancefrom);
						ps4.setString(2, taccnofrom);
						
						int bal_deducted_result=ps4.executeUpdate();
						
						System.out.println("transfer complete");
						resp.getWriter().write("success");
						}else{
							//resp.getWriter().write("error");
							System.out.println("error");
							con.rollback();
						}
				}else{
					System.out.println("error");
					//resp.getWriter().write("invalid accno");
				}
		} catch (Exception e) {
		
			e.printStackTrace();
		}
	}
}