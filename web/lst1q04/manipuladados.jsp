<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 04</title>
    </head>
<%
    Integer Num1 = Integer.parseInt(request.getParameter("N1"));    
    Integer Num2 = Integer.parseInt(request.getParameter("N2"));
    Integer Div = Integer.parseInt(request.getParameter("D"));
    boolean Res1;
    boolean Res2;
    
    if (Num1 <= Num2/3){
        Res1 = true;
    } else {
        Res1 = false;
    }
    
    if (Div >= 1 && Div <= Num1){
        Res2 = true;
    } else {
        Res2 = false;
    }
%>
    <body>
<%
    if (Res1 != true || Res2 != true){
%>
    <h2>Resultado - Uma ou mais condições não foram aceitas!!!</h2>
    <p><var>Num1</var> <= <var>Num2</var> / 3</p>
    <p><kbd><%=Num1%></kbd> <= <kbd><%=Num2%></kbd> / 3</p>
    <h3> Status - Condição aceita: <samp><%=Res1%></samp></h3>
    <p>1 <= <var>Div</var> <= <var>Num1</var></p>
    <p>1 <= <kbd><%=Div%></kbd> <= <kbd><%=Num1%></kbd></p>
    <h3> Status - Condição aceita: <samp><%=Res2%></samp></h3>
    
    <p><a href ="index.jsp">Tentar novamente</a></p>
<%
    }
%>
<p>Valores entre <var>Num1</var> e <var>Num2</var> divisiveis por <var>Div</var>.</p>
    <ul>
<%
    for (int i = Num1; i <= Num2; i++){
        float mod = i%Div;
        
        if (mod == 0){
%>
        <li><%=i%></li>
<%
       }
    }
%>
    </ul>
    </body>
</html>
