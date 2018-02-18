$(document).ready(function() {

	$("button").click(function loginval() {

		var customerid = $("#customerid").val();
		var upass = $("#pwd").val();

		var regex = /^[0-9a-zA-Z]/;
		var passfilter = /^[a-zA-Z0-9_@$]/;
		var regexcid = regex.test($("#customerid").val());
		var regexpas = passfilter.test($("#pwd").val());

		// var spcheck=regex.test(uname);
		// var spcheck2=regex.test(upass);
		if (regexcid == true && regexpas == true) {

			if (customerid.length < 5 && upass.length < 5) {
				alert('username/password should be 5 characters');
			} else {

				$.post("loginuser", {
					accno : customerid,
					password : upass
				},

				function(responseText) {

					if (responseText == "success") {
						alert('login success');
						var successurl = "dashboard.jsp";
						//var encodedUrl=encodeURIComponent(successurl);
						//console.log(encodedUrl);
						window.location.href = successurl;

					} else {

						alert('username/password did not match');

					}
				});
			}
		} else {
			alert('special characters not allowed');
		}

	});

});
