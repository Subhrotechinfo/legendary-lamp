$(document).ready(function(){
	
				
				$("button").click(
									function withdrawmoney(){
										
										var amt=$("#amountwithdraw").val();
										var camt=$("#confirmwithdraw").val();
										var str={amount:amt,camount:camt};
										if(amt == camt && amt > 0)
										{
											
											$.post("withdraw",{amount:amt,camount:camt},
												
												function(data,status){
													
													if(status == "success"){
														
														alert('amount withdraw success');							
														
														
													}else{
														
														alert('amount withdraw failed');
													}
												
												}
														
														
													
											);
											
										}else{
											alert('invalid amounts');
										}	
										
									});
	
});