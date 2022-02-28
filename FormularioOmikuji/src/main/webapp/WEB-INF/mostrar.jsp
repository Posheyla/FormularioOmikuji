<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Omikuji Form</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/mostrar.css">
	</head>
	<body>
		<header>
		<div class="navbar navbar-dark bg-dark box-shadow">
			<div class="container d-flex justify-content-between">
				<a class="btn btn-secondary " href="/omikuji">HOME</a>
			</div>
		</div>
		</header>
	
		<main role="main">
			<div class="container mt-4 p-3 bg-primary">
				<h1>Here's Your Omikuji</h1>
				<h2>
					In <c:out value="${ years }"></c:out> years,
					you will live in <c:out value="${ city }"></c:out>
					with <c:out value="${ person }"></c:out>
					as your roomate, <c:out value="${ endeavor }"></c:out>
					for a living.  The next time you see a <c:out value="${ organizm }"></c:out>,
					you will have good luck.  Also, <c:out value="${ somethingnice }"></c:out>
				</h2>
			</div>
		</main>
	
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>