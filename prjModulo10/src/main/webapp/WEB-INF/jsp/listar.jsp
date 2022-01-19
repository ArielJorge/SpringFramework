<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de listagem</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="icon" type="image/png" href="https://cdn.pinkward.gg/lol/runes/8128.png"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<c:url value="index.jsp" var="home"></c:url>
	<c:url value="deletar" var="deletar"></c:url>
	<c:url value="atualizar" var="atualizar"></c:url>
	<style>
		#banner{
			background-image: url(https://t.ctcdn.com.br/MHWXLcJmSYZmLHCg_knO9FQK89M=/0x49:1921x1130/1400x788/smart/i321892.jpeg);
			background-position: center;
			background-repeat: no-repeat;
			color: #FFFFFF;
		}
	</style>
    <div class="container w-75 my-4 py-4 bg-light">
    	<div class="container-fluid p-2">
    		<div class="text-center p-5" id="banner">
	    		<h1>Listagem de usuários</h1>
    		</div>
    	</div>
    	<c:if test="${not empty mensagem}">
            <div class="alert ${cor}" role="alert">
                ${mensagem}
            </div>
        </c:if>
        <div class="container">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Nome</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Data Cadastro</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="usuario">
                    <tr>
                        <td>${usuario.nome}</td>
                        <td>${usuario.email}</td>
                        <td>${usuario.data}</td>
                        <td style="max-width: 100px;">
                        	<div class="container">
                        		<div class="row">
                        			<div class="col">
                        				<a href="${atualizar}?nome=${usuario.nome}" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></a>
                        			</div>
                        			<div class="col">
                        				<a href="${deletar}?nome=${usuario.nome}" class="btn btn-dark"><i class="bi bi-trash-fill"></i></a>
                        			</div>
                        		</div>
                        	</div>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <center>
       		<a href="${home}" class="btn btn-primary">Voltar</a>
        </center>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>