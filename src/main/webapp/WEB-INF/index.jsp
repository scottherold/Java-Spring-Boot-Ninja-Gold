<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL library -->
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
							<div class="row justify-content-start mb-3">
								<div class="col-2">
									<h4>Your Gold:</h4>
								</div>
								<div class="col-2 border">
									<h4><c:out value="${ninja.getGold()}" /></h4>
								</div>
							</div>
							<div class="row justify-content-center mb-3">
								<!-- Farm -->
								<div class="col-2 p-2">
									<div class="row justify-content-center px-2">
										<div class="col bg-light border rounded p-1">
											<div class="row justify-content-center">
												<div class="col-10">
													<h4 class="text-center">Farm</h4>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-10">
													<h6 class="text-center">(earns 10-20 gold)</h6>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-4-offset-4">
													<form method="POST" action="process/farm">
														<input type="submit" value="Find Gold!" class="btn btn-warning mb-2">
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Cave -->
								<div class="col-2 p-2">
									<div class="row justify-content-center px-2">
										<div class="col bg-light border rounded p-1">
											<div class="row justify-content-center">
												<div class="col-10">
													<h4 class="text-center">Cave</h4>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-10">
													<h6 class="text-center">(earns 5-10 gold)</h6>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-4-offset-4">
													<form method="POST" action="process/cave">
														<input type="submit" value="Find Gold!" class="btn btn-warning mb-2">
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- House -->
								<div class="col-2 p-2">
									<div class="row justify-content-center px-2">
										<div class="col bg-light border rounded p-1">
											<div class="row justify-content-center">
												<div class="col-10">
													<h4 class="text-center">House</h4>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-10">
													<h6 class="text-center">(earns 2-5 gold)</h6>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-4-offset-4">
													<form method="POST" action="process/house">
														<input type="submit" value="Find Gold!" class="btn btn-warning mb-2">
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Casino -->
								<div class="col-2 p-2">
									<div class="row justify-content-center px-2">
										<div class="col bg-light border rounded p-1">
											<div class="row justify-content-center">
												<div class="col-10">
													<h4 class="text-center">Casino!</h4>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-10">
													<h6 class="text-center">(earns/loses 0-50 gold)</h6>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-4-offset-4">
													<form method="POST" action="process/casino">
														<input type="submit" value="Find Gold!" class="btn btn-warning mb-2">
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Spa -->
								<div class="col-2 p-2">
									<div class="row justify-content-center px-2">
										<div class="col bg-light border rounded p-1">
											<div class="row justify-content-center">
												<div class="col-10">
													<h4 class="text-center">Spa</h4>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-10">
													<h6 class="text-center">(loses 5-20 gold)</h6>
												</div>
											</div>
											<div class="row justify-content-center">
												<div class="col-4-offset-4">
													<form method="POST" action="process/spa">
														<input type="submit" value="Find Gold!" class="btn btn-warning mb-2">
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
							<!-- Activities -->
							<div class="row justify-content-start">
								<div class="col-2">
									<h4>Activities:</h4>
								</div>
							</div>
							<!-- Scrollbox -->
							<div class="row justify-content-center p-3">
								<div class="col border rounded p-2 scroll-box bg-light">
									<c:forEach var="message" items="${ninja.getActivities()}">
										<c:out value="${message}" escapeXml="false"/>
									</c:forEach>
								</div>
							</div>
							<!-- Reset button -->
							<div class="row justify-content-center">
								<div class="col-2-offset-5">
									<form method="POST" action="/reset">
										<input type="submit" value="Reset" class="btn btn-success mb-2">
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