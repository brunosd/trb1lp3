<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 6</title>
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
        <title>Exercício 06</title>
        <style>
            .sucesso {
                background-color: #000099;
            }
        </style>
    </head>
<%
    float altura;
    float massa;
    float IMC;

    try{
        altura = Float.parseFloat(request.getParameter("altura"));
        massa = Float.parseFloat(request.getParameter("massa"));
    } catch (Exception e) {
        altura = 0;
        massa = 0;
        IMC = 0;
    }
    
    IMC = massa / (altura * altura);
%>
    <body>
        <form action="index.jsp" method="post">
            <dl>
                <dt>
                    <label for="Altura">Altura:</label>
                </dt>
                <dd>
                    <input type="text" name="altura" size="20" placeholder="Ex: 1.80"/>
                </dd>
                <dt>
                    <label for="Massa">Massa:</label>
                </dt>
                <dd>
                    <input type="number" name="massa" placeholder="Ex: 80"/>
                </dd>
                <dt>
                <input type="submit" value="Enviar"/>
                </dt>
            </dl>
        </form>

        <table border="1">
            <thead>
                <tr>
                    <th>IMC</th>
                    <th>Classificação</th>
                </tr>
            </thead>
            <tbody>
<%
    if (IMC <= 18.5){
%>
                <tr class="sucesso">
                    <td>< 18,5</td>
                    <td>Magreza</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>< 18,5</td>
                    <td>Magreza</td>
                </tr>
<%
   }
    
    if (IMC > 18.5 && IMC <= 24.9) {
%>
                <tr class="sucesso">
                    <td>18,6 - 24,9</td>
                    <td>Saudável</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>18,6 - 24,9</td>
                    <td>Saudável</td>
                </tr>
<%
   }
    
    if (IMC > 24.9 && IMC <=29.9){
%>
                <tr class="sucesso">
                    <td>25,0 - 29,9</td>
                    <td>Peso em excesso</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>25,0 - 29,9</td>
                    <td>Peso em excesso</td>
                </tr>
<%
   }
    
    if (IMC > 29.9 && IMC <= 34.9) {
%>
                <tr class="sucesso">
                    <td>30,0 - 34,9</td>
                    <td>Obesidade Grau I</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>30,0 - 34,9</td>
                    <td>Obesidade Grau I</td>
                </tr>
<%
   }
    
    if (IMC >= 34.9 && IMC <= 39.9) {
%>
                <tr class="sucesso">
                    <td>35,0 - 39,9</td>
                    <td>Obesidade Grau II</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>35,0 - 39,9</td>
                    <td>Obesidade Grau II</td>
                </tr>
<%
   }
    
    if (IMC > 39.9) {
%>
                <tr class="sucesso">
                    <td>>= 40,0</td>
                    <td>Obesidade Grau III</td>
                </tr>
<%
   } else {
%>
                <tr>
                    <td>>= 40,0</td>
                    <td>Obesidade Grau III</td>
                </tr>
<%
   }
%>
            </tbody>
        </table>
    
<div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>
</html>
