
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 1</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
    </head>
    <body>
<center>
<div class="geral">
<div class="top">
<%@include file="../cabecalho.jsp" %>
</div>
<div class="left">
    <div class="menu">

<ul>
    <li><a href="../index.jsp">Home</a></li>
</ul>
    </div>
</div>
<div class="right">
<jsp:useBean id="exercicio1" class="lst1q01.Lp3exr01"/>
<p><strong>Letra a:</strong><br/>exibe no console</p>
        <p><strong>Letra B:</strong>  <br/><c:out value="${ exercicio1.dataAtual()}"/></p>
        <p><strong>Letra C:</strong>  <br/><%= exercicio1.dataAtual() %></p>
        <p><strong>Letra D:</strong> <br/><c:out value="<!--${ exercicio1.dataAtual()}-->"/></p>
        <p><a href="">Atualizar</a></p>
    
</div>
        <div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>

</html>
