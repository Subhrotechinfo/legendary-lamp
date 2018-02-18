$(document).ready(function dashboad() {
	alert('u are logged in');

});

$(document).ready(
		function fetch() {

			$.ajax({

				url : "tabledata",
				dataType : "json",
				type : "POST",
				success : function(res) {

					var data = "";
					for (i = 0; i < res.length; i++) {

						var p = JSON.parse(res[i]);

						data += "<tr><td>" + p.Accountno + "</td><td>"
								+ p.Username + "</td><td>" + p.Amount
								+ "</td><td>" + p.Address + "</td><td>"
								+ p.Phone + "</td></tr>";
					}

					$("#content").html(data);

				},
				error : function() {

					alert('could not fetch the data at this moment');
				}

			});

		});
