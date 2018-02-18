$(document).ready(
		
						function(){
		
							$("button").click(
											function userval(){
												
												var unm=$("#usernm").val();
												var emid=$("#emailid").val();
												var upass=$("#pwd").val();
												var urepass=$("#repwd").val();
												var amt=$("#amt").val();
												var adr=$("#adr").val();
												var ph=$("#ph").val();

												var regex=/^[0-9a-zA-Z\_]+$/;
												var filter=/^[0-9a-zA-Z]/;
												var passfilter=/^[a-zA-Z0-9_@$]/;
												var amtfilter=/^[0-9]/;
												var adrfilter=/^[a-zA-Z0-9.,\s]/;
												var emailfilter = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
												
												var filtercid=filter.test($("#usernm").val());
												var filteremail=emailfilter.test($("#emailid").val());							
												var filterpas=passfilter.test($("#pwd").val());
												var filterrepass=passfilter.test($("#repwd").val());
												var filteramt=amtfilter.test($("#amt").val());
												var filteradr= adrfilter.test($("#adr").val());
												var filterph=amtfilter.test($("#ph").val());
												
												
												//var spcheck=regex.test(uname);
												//var spcheck2=regex.test(upass);
												if(filtercid == true && filteremail == true && filterpas == true && filterrepass== true && filteramt== true	&& filteradr ==true 	&& filterph == true)
												{
													
													if(upass != urepass){
														alert('password/confirm password did not match');											
													}else{
																
																$.post(
																		"userregistration",
																		{
																			uname:unm,
																			eid:emid,
																			password:upass,
																			repassword:urepass,
																			amount:amt,
																			address:adr,
																			phone:ph
																			
																		},
																			function (data,status){
																			
																			
																					if(status == "success"){
																				
																							alert('Kindly note down your account number '+data);
																							window.location.href="loginpage.jsp";
																							
																							
																					}else{
																				
																							alert('username/password did not match');
																				
																					}
																			
																					});
																		
																		
																
													}
												}else{
													alert('special characters not allowed');
													
												}
		
													});
	});