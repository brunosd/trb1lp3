<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercicio 2</title>
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
<jsp:useBean id="exercicio2" class="lst1q02.Lp3exr02"/>
<p><strong>Letra A:</strong> <br/> <c:out value="${ exercicio2.valorFinal()}"/></p>
<p><strong>Letra B:</strong> <br/>"Para um investimento inicial de R$1000,00 a uma taxa de juros simples de 1% ao mês, você terá R$<c:out value="${ exercicio2.valorFinal()}"/>  ao final de 12 meses";</p>
        <form method="post">
            <p><strong>Letra C:</strong> <br/>Digite um mês: <input type="text" name="meses" id="meses"/><input type="submit" id="calcular" value="Calcular"/></p>
        <p><c:if test="${pageContext.request.method=='POST'}">
            <%
            
        double valorFinal;
        String meses = (String) request.getParameter("meses");
        int Y = Integer.parseInt(meses);
                
                
        if(Y<1 || Y>12)
        {
             valorFinal = 1000 * (1 + 12 * 0.01);
        }
        else
        {    
         valorFinal = 1000 * (1 + Y * 0.01);
        }
            
            %>
              <p>Total: <%=valorFinal%>  </p>
            </c:if></p>
        
        </form>
</div>
<div class="rodape">
<%@include file="../rodape.jsp" %></div></div>
</center>
</body>
</html>
