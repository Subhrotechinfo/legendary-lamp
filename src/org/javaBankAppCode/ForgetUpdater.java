package org.javaBankAppCode;
import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

//@WebServlet("/forget")
public class ForgetUpdater extends HttpServlet
{
	private static final long serialVersionUID = 8286748068156370940L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String faccno=req.getParameter("accountno");
		String fpass=req.getParameter("pass");
		String frepass=req.getParameter("repass");
		String dbaccno="";
		String selqry="Select * from newaccount where ACCOUNTNO=?";
		String updtqry="Update newaccount set PASSWORD=?,REPASSWORD=? where ACCOUNTNO=?";
		try {
				Connection con=ConnectionFunction.getConnection();
				PreparedStatement ps=con.prepareStatement(selqry);
				ps.setString(1, faccno);
				ResultSet rs= ps.executeQuery();
				while(rs.next()){
					
					dbaccno=rs.getString(1);
				}
				if(faccno.equals(dbaccno)){
					
					PreparedStatement psupdt=con.prepareStatement(updtqry);
					psupdt.setString(1,fpass);
					psupdt.setString(2, frepass);
					psupdt.setString(3, faccno);
					psupdt.executeUpdate();
					//send email
					
					resp.getWriter().print(faccno);
					System.out.println("updating");
					
				}else{
					
					System.out.println("something went wrong");
					//resp.setStatus(404);
					
				}
				
		} catch (Exception e) {
		
			e.printStackTrace();
		} 
	}
}