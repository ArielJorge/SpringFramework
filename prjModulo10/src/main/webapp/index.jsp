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
						<a class="nav-link active" aria-current="page" href="#">Home</a>
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
  					SOBRE O SITE
  				</h3>
  				<h6>  				
	  				Este projeto foi feito para uma atividade avaliativa do IFGOIANO - Campus trindade
  				</h6>
  				<hr>
		        <h4>
		          Integrantes do grupo	
		        </h4>
		        <div class="container my-5">
		        	<div class="row">
		        		<div class="col-md-3">
		        			<div class="card">
						  	<img src="https://64.media.tumblr.com/968b1ff5cb18bede654431ef367b7da7/66a2bea5b50e93c2-24/s400x600/1d093a72c86697fa26829b75a1298c9e1c18d5f7.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							  	<h5 class="card-title">Ariel Jorge da Silva</h5>
							  	<h5 class="card-subtitle text-info">the best</h5>
							    <p class="card-subtitle">Aluno de Informática</p>
							  </div>
							</div>
		        		</div>
		        		<div class="col-md-3">
		        			<div class="card">
						  	<img src="https://www.listagrupos.com/img-400.400.100-2a79189a9dc7434a83a6098101dcd196.jpg" class="card-img-top" alt="foto de ariel jorge">
							  <div class="card-body">
							  	<h5 class="card-title">Matheus Luiz Ferreira</h5>
							  	<h5 class="card-title text-danger">The first</h5>
							    <p class="card-subtitle">Aluno de Informática</p>
							  </div>
							</div>
		        		</div>
		        		<div class="col-md-3">
		        			<div class="card">
						  	<img src="http://4.bp.blogspot.com/-7Z7jV6zSlwY/TgoJZSChYLI/AAAAAAAAA_g/ln9Bxo3N7GM/s1600/esconder.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							  	<h5 class="card-title">Lailyelle Losangeles Dutra</h5>
							    <p class="card-subtitle">Aluno de Informática</p>
							  </div>
							</div>
		        		</div>
		        		<div class="col-md-3">
		        			<div class="card">
						  	<img src="https://valentereispessali.com.br/wp-content/uploads/2020/01/WhatsApp-Image-2020-01-29-at-11.03.31.jpeg" class="card-img-top" alt="...">
							  <div class="card-body">
							  	<h5 class="card-title">Sofia Victoria vilas boas Assunção</h5>
							    <p class="card-subtitle">Aluno de Informática</p>
							  </div>
							</div>
		        		</div>
		        	</div>
		        </div>
  			</div>
  		</div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>