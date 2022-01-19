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
</head>
<body>
	<c:url value="listar" var="voltar"></c:url>
	<div class="container p-5" style="max-width:892px;">
		<div class="p-5 text-center">
			<h3>Formulário alteração usuário</h3>
		</div>
		<div class="container" style="max-width:600px;">
	        <form action="atualizar" method="post" class="form-group">
	            <div class="container">
	                <div class="row">
	                    <div class="col-2">
	                        <label for="nome" class="my-2">Nome</label>
	                    </div>
	                    <div class="col-10">
	                        <input type="text" name="nome" id="nome" class="form-control my-2" value="${usuario.nome}" readonly>
	                    </div>
	                    <div class="col-2">
	                        <label for="email" class="my-2">E-mail</label>
	                    </div>
	                    <div class="col-10">
	                        <input type="email" name="email" id="email" class="form-control my-2" value="${usuario.email}">
	                    </div>
	                    <div class="col-2">
	                        <label for="senha" class="my-2">Senha</label>
	                    </div>
	                    <div class="col-10">
	                        <input type="password" name="senha" id="senha" class="form-control my-2">
	                    </div>
	                </div>
	            </div>
	           	<center>
	           		<div class="my-2">
	           			<input type="submit" class="btn btn-secondary" value="Salvar">
	           			<a href="${voltar}" class="btn btn-dark">Voltar</a>
	           		</div>
	           	</center>
	        </form>
		</div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>