package org.javaBankAppCode;

import java.io.FileInputStream;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


public class MailSender {
	
	public static boolean mail(String to,String subject,String text) throws CustomException{
		
		Properties prop = null;
		FileInputStream inStream=null;
		try {
			
			prop = new Properties();
			inStream = new FileInputStream("WebContent/resourceconfig/config.properties");
			prop.load(inStream);
		} catch (Exception e) {
			
			throw new CustomException();
		}
		
		
		final String adminEmail=prop.getProperty("adminemail");
		final String passKey = prop.getProperty("password");
		
		String sender=to;
		String from=adminEmail;
		
		String host="smtp.gmail.com";
		Properties props=new Properties();
		  
		  props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");
		
		
	      Session session =Session.getInstance(props,
	    		  
	    		  new javax.mail.Authenticator(){
	    	  	
	    	  					protected PasswordAuthentication getPasswordAuthentication(){
	    	  							return new PasswordAuthentication(adminEmail,passKey);
	    	  					}	
	      });
		
	      try {
	    	  	String sub=subject;
	    	  	String body= text;
	    	  		
	    	  	
	    	  		//Creating default MimeMessage
	    	  		Message message=new MimeMessage(session);
	    	  		message.setFrom(new InternetAddress(adminEmail));
	    	  		message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
	    	  		
	    	  		//Setting Subject
	    	  		message.setSubject(sub);
	    	  		
	    	  		message.setText(text);
	    	  		Transport.send(message);
	    	  		System.out.println("send success");
	    	  
	    	  
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
}
