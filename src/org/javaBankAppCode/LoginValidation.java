package org.javaBankAppCode;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@WebServlet("/loginuser")
public class LoginValidation extends HttpServlet 
{
	private static final long serialVersionUID = -1495658266449449681L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	
		String faccno= req.getParameter("accno");
		String fpass= req.getParameter("password");
		String sql = "select * from newaccount where ACCOUNTNO=? and PASSWORD=?";
		String dbaccountno="",userdbPsw="";
		String userEmail="";
		
		try {
			
			Connection con=ConnectionFunction.getConnection();
			PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,faccno);
				ps.setString(2, fpass);
				
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()){
				
					dbaccountno = rs.getString("ACCOUNTNO");	

					userdbPsw = rs.getString("PASSWORD");
					userEmail=rs.getString("EMAILID");
				}
				
				/*try{
					DateFormat format = new SimpleDateFormat();
					Date date = new Date();
					String attach="Dear Customer your account has been logged in recently "+format.format(date)+". If it was not you kindly contact our customer care immediately.";
					 
					Mailstatus=MailSender.mail("subhro.rj@gmail.com", "Login alert","Text");
					System.out.println("Mail send");
				}catch(Exception e){
					throw new CustomException();
					}
				if(Mailstatus==true)	System.out.println("Mail send");
				else				System.out.println("Not send");
				*/
				if(faccno.equals(dbaccountno) && fpass.equals(userdbPsw))
				{
					//Configure session
					HttpSession ses= req.getSession();
					ses.setAttribute("userlogin", faccno);
					
					ses.setMaxInactiveInterval(30*60);
					Cookie userName=new Cookie("logincookie", faccno);
					resp.addCookie(userName);
					
					//Encoding the string URL
					
					//String encodedURL=resp.encodeRedirectUrl("dashboard.jsp");
					//resp.sendRedirect(encodedURL);
					String status="success";	
					resp.setContentType("text/plain");
					resp.getWriter().write(status);
					
				}
				else{
					
					String badstatus="failed";
					resp.setContentType("text/plain");
					resp.getWriter().write(badstatus);
					
					//sending back to login page
					RequestDispatcher rd=getServletContext().getRequestDispatcher("/loginpage.jsp");
					rd.include(req, resp);	
					
			}
				
		} catch (Exception e) {
			e.printStackTrace();
			}
			
		
		}

	}
