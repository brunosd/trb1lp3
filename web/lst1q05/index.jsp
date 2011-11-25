<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 5</title>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício 5</title>
    </head>
    <body>
        <form action="index.jsp" method="get">
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
                <input type="submit" name="Enviar" />
                </dt>
            </dl>
        </form>

<%
    int num1;
    int num2;

    try {
        num1 = Integer.parseInt(request.getParameter("N1"));
        num2 = Integer.parseInt(request.getParameter("N2"));
    } catch (Exception e) {
        num1 = 0;
        num2 = 0;
    }

    if (num2 != 0) {
%>
        <table border="1">
        <tr>
            <th></th>
<%
        for(int cabecalho = 0; cabecalho <= 10; cabecalho++){
%>
            <th><%=cabecalho%></th> 
<%
        }
%>
        </tr>
<%
        for(int linha = num1; linha <= num2; linha++){
%>
            <tr>
                <th><%=linha%></th>
<%
            for(int coluna = 0; coluna <= 10; coluna++) {
%>
                <td><%=linha * coluna%></td> 
<%
            }
%>
            </tr>
<%
        }
%>
        </table>
<%

    }

%>
    

<div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>
</html>
