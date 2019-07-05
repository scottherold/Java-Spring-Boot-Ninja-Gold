<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- Twitter Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<title>Ninja Gold Game</title>
	</head>
	<body>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-10 m-3 bg-light border rounded">
					<div class="row p-3">
						<div class="col bg-white p-3 border">
							<!-- Gold -->
							<div class="row justify-content-center mb-3">
								<div class="col-10-offset-1">
									<h4 class="text-center text-danger">Oh no! You're in debt <c:out value="${ninja.getGold()}" /> gold!</h4>
									<h6 class="text-center">Get cozy, the loan sharks have taken you to court and you're now in prison!</h6>
								</div>
							</div>
							<!-- Reset button -->
							<div class="row justify-content-center">
								<div class="col-2-offset-5">
									<form method="POST" action="/reset">
										<input type="submit" value="Reset" class="btn btn-danger mb-2">
									</form>
								</div>
							</div>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</body>
</html>