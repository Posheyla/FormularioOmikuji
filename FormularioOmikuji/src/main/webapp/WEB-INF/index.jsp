<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Omikuji Form</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/index.css">
	</head>
	<body>
		<header>
		<div>
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"></a> <a class="btn btn-primary" href="/omikuji">HOME</a>
			</div>
		</div>
		</header>
	
		<main role="main">
			<div class="container mt-4 p-3">
				<h1>Send an Omikuji!</h1>
				<form action="/omikuji" method="POST">
					<label for="years">Pick a number from 5 to 25:</label>
					<input type="number" id="years" name="years" min="5" max="25">
					<div class="form-group mb-2">
						<label class="form-label" for="city">Enter the name of a City:</label>
						 <input class="form-control" type="text" id="city" name="city">
					</div>
					<div class="form-group mb-2">
						<label class="form-label" for="person">Enter the name of a real person:</label>
						 <input class="form-control" type="text" id="person" name="person">
					</div>
					<div class="form-group mb-2">
						<label class="form-label" for="endeaver">Enter a professional endeavor or hobby:</label>
						 <input class="form-control" type="text" id="endeavor" name="endeavor">
					</div>
					<div class="form-group mb-2">
						<label class="form-label" for="organizm">Enter any type of living thing:</label>
						 <input class="form-control" type="text" id="organizm" name="organizm">
					</div>
					<div class="form-group mb-2">
						<label for="somethingnice">Say something nice to someone:</label>
						<textarea class="form-control" id="somethingnice" name="somethingnice" rows="3"></textarea>
					</div>
					<input class="btn btn-primary" type="submit">
				</form>
	
			</div>
		</main>
	
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>