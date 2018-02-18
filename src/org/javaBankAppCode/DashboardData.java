package org.javaBankAppCode;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

//@WebServlet("/tabledata")
public class DashboardData extends HttpServlet {
	private static final long serialVersionUID = -2535345933493746410L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("checking for execution");
		String qry = "Select * from newaccount where ACCOUNTNO = ?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String dbaccno = "", faccno = "" ;

		System.out.println("checking status 1");
		
		String user=null;
		
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
		System.out.println("Dashboard data number"+faccno);
		try {
			System.out.println("checking status 2");
			con = ConnectionFunction.getConnection();
			ps = con.prepareStatement(qry);
			ps.setString(1, faccno);

			rs = ps.executeQuery();
			System.out.println("checking status 3");
			JSONArray array = new JSONArray();
			JSONObject obj = new JSONObject();
			while (rs.next()) {
				System.out.println("checking status 4");
				dbaccno = rs.getString("ACCOUNTNO");

				obj.put("Accountno", rs.getString("ACCOUNTNO"));
				obj.put("Username", rs.getString("USERNAME"));
				obj.put("Amount", rs.getString("AMOUNT"));
				obj.put("Address", rs.getString("ADDRESS"));
				obj.put("Phone", rs.getString("PHONE"));
				array.put(obj.toString());
			}
			System.out.println("checking status 5");
			if (faccno.equals(dbaccno)) {
				resp.getWriter().print(array);
				System.out.print("sending response");
			} else {
				resp.getWriter().write("error");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}