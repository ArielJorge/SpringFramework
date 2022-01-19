<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de cadastro</title>
    
    <link rel="icon" type="image/png" href="https://cdn.pinkward.gg/lol/runes/8128.png"/>

    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <style>
        * {
            box-sizing: border-box;
        }

        body{
            background-color: rgba(109, 109, 109, 0.671);
        }
        
        #form {
            margin-top: 18vh;
            border-radius: 10px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.267);
            padding: 40px;
            width: 350px;
            background-color: white;
        }
        
        #volt {
            margin-left: 100px;
        }
    </style>
</head>
<body>
    <c:url value="/index.jsp" var="index"></c:url>
    <form action="cadastro" method="post" id="form" class="container">
        <h2 style="font-weight: 500;">Formulário De Cadastro</h2>
        <c:if test="${not empty mensagem}">
            <div class="alert ${cor}" role="alert">
                ${mensagem}
            </div>
        </c:if>
        <br>
        <div class="form-group">
            <label for="formGroupExampleInput">Nome</label>
            <i class="bi bi-person-fill"></i>
            <input type="text" name="nome" class="form-control" id="nome" placeholder="Seu nome">
        </div>
        <div class="form-group">
            <label for="formGroupExampleInput2">Email</label>
            <i class="bi bi-envelope-fill"></i>
            <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="email.@gmail.com">
        </div>
        <div class="form-group">
            <label for="formGroupExampleInput2">Senha</label>
            <i class="bi bi-lock"></i>
            <input type="password" name="senha" class="form-control" id="senha" aria-describedby="emailHelp" placeholder="senha">
        </div>
        <br>
        <button type="submit" class="btn btn-primary mb-2">Confirmar</button>
        <a id="volt" class="btn btn-secondary mb-2" href="${index}">Voltar</a>
    </form>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>
</body>
</html>