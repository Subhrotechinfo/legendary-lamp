$(document).ready(function(){
	
				
				$("button").click(
									function depositmoney(){
										
										var amt=$("#amountdeposit").val();
										var camt=$("#confirmdeposit").val();
										var str={amount:amt,camount:camt};
										if(amt == camt && amt > 0)
										{
											
											$.post("deposit",{amount:amt,camount:camt},
												
												function(data,status){
													
													if(status == "success"){
														
														alert('amount deposited '+ data);							
														
														
													}else{
														
														alert('amount not deposited ');
													}
												
												}
														
														
													
											);
											
										}else{
											alert('invalid amounts');
										}	
										
									});
	
});