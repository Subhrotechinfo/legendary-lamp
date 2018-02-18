$(document).ready(function(){
	$("#response").hide();
	$("#error").hide();
				
				$("button").click(
									function frgtpaswrd(){
										
										var accno=$("#accno").val();
										var newpwd=$("#pwd").val();
										var newrepwd=$("#repwd").val();
										
										var regex=/^[0-9a-zA-Z]/;
										var passfilter=/^[a-zA-Z0-9_@$]/;
										
										var faccno=regex.test(accno);
										var fpass=passfilter.test(newpwd);
										var frepass=passfilter.test(newrepwd);
										
										if((faccno == true && fpass== true && frepass == true) && newpwd == newrepwd)
										{
											
											$.ajax({
													url:"forget",
													type:"post",
													data:{accountno:accno,pass:newpwd,repass:newrepwd},
													success:function(data){
														var succ="success"
														$("#response").show();
														return false;},						
													error:function(){
														var err="error"
														$('#error').show;
														return false;}
													});
												
										}
									});
	
});