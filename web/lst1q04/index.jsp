<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 3</title>
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
<div class="right"></div>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 04</title>
    </head>
    <body>
        <form action="manipuladados.jsp" method="get">
            <dl>
                <dt>
                    <label for="N1">Num1:</label>
                </dt>
                <dd>
                    <input type="number" name="N1" size="50" placeholder="Ex: 4"/>
                </dd>
                <dt>
                    <label for="N2">Num2:</label>
                </dt>
                <dd>
                    <input type="number" name="N2" size="50" placeholder="Ex: 15"/>
                </dd>
                <dt>
                    <label for="D">D:</label>
                </dt>
                <dd>
                    <input type="number" name="D"  size="50" placeholder="Ex: 3"/>
                </dd>
                <dt>
                    <input type="submit" name="Enviar" />
                </dt>
            </dl>
        </form>
        
        
        
    

<div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>
</html>
