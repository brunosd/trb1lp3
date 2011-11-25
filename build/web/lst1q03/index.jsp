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
<div class="right">
        <style>
            .bomnegocio {
                color: green;
            }
            .maunegocio {
                color: red;
            } 
        </style>
    </head>
<%
    double aplicacao;
    double juros;
    int meses;
    double vFinal;

    try {
        aplicacao = Double.parseDouble(request.getParameter("aplicacao"));
    } catch (Exception e) {
        aplicacao = 5000;
    }

    try {
        juros = Double.parseDouble(request.getParameter("juros"));
    } catch (Exception e) {
        juros = 0.01;
    }

    try {
        meses = Integer.parseInt(request.getParameter("meses"));
    } catch (Exception e) {
        meses = 12;
    }

       vFinal = aplicacao * Math.pow((1 + juros), meses);
%>
    <body>
        <p>Para um investimento inicial de R$ <kbd><%=aplicacao%></kbd> a uma taxa de juros compostos de <kbd><%=juros*100%></kbd>% ao mês você terá R$ <samp><%=vFinal%></samp> ao final de <kbd><%=meses%></kbd> meses!</p>
<%
    if ((vFinal - aplicacao) / meses > 200) {
%>
        <h3 class="bomnegocio">Bom negócio!</h3>
<%
    } else {
%>
        <h3 class="maunegocio"> Mau negócio! </h3>
<%
    }
%>
    
<div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>
</html>

