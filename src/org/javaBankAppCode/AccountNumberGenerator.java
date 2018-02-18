package org.javaBankAppCode;

import java.util.Random;


public class AccountNumberGenerator {
	
	public static String generateAccountNo()
	{
		Random r1=new Random();
		int num = r1.nextInt(10000)+1000;		
		System.out.println(num);
		String stnum="";
		
		if(num > 0 && (num >1000 || num < 9999))
		{
			stnum="SBI"+num;
			System.out.println("Account Number: " +stnum);
		}
		else
		{
			System.out.println("Negative number generated");
		}

		return stnum;
		
	}

}