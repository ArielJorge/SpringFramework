<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="icon" type="image/png" href="https://cdn.pinkward.gg/lol/runes/8128.png"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
		*{
			box-sizing: border-box;
		}
		
		.view,html,body,header {
			height: 93.97vh;
		}
    </style>
</head>
<body>
	<c:url value="index.jsp" var="home"></c:url>
	<c:url value="login" var="login"></c:url>
	<c:url value="cadastro" var="cadastro"></c:url>
	<c:url value="listar" var="listar"></c:url>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarText">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="${home}">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${cadastro}">Cadastrar</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${login}">Login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${listar}">Listagem</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
  <!-- Full Page Intro -->
  <div class="view p-5" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/Others/images/91.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
  		<div class="container bg-light p-4">
  			<div class="text-center">
  				<h3>
  					Ocorreu um erro no site!!!
  				</h3>
  				<h6>  				
	  				${exception}
  				</h6>
  			</div>
  		</div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>