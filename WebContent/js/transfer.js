$(document).ready(function(){
	
				
				$("button").click(
									function transfermoney(){
										
										var tacno=$("#transferaccno").val();
										var ctacno=$("#confirmtransferaccno").val();
										var amt=$("#amountwithdraw").val();
										var camt=$("#confirmwithdraw").val();
										if(amt > 0 && amt == camt && tacno == ctacno)
										{
											
											$.post("transfer",{taccno:tacno,amount:amt},
												
												function(data,status){
													
													if(status == "success"){
														
														alert('amount transferred success');							
														
														
													}else{
														
														alert('amount transfer failed');
													}
												
												}
													
											);
											
										}else{
											alert('invalid entry');
										}	
										
									});
	
});