package org.javaBankAppCode;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class testemail
{

	public static void main(String args[]) throws CustomException
	
	{
		MailSender.mail("subhro.rj@gmail.com","login success","text");
		System.out.println("Mail send");
		//DateFormat format = new SimpleDateFormat();
		//Date date = new Date();
		//String attach="Dear Customer your account has been logged in recently "+format.format(date);
		//MailSender.mail("subhro.rj@gmail.com", "Login alert",attach);
		
		
	}
}