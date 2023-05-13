<%@page import="com.entidade.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <%
            //Recupera os parâmetros
            double valorA = Double.parseDouble(request.getParameter("ValorA"));
            double valorB = Double.parseDouble(request.getParameter("ValorB"));
            
            Calculadora calculadora = new Calculadora();
            
            double resultado = 0;

            if (request.getParameter("operacao").equals("adicao")) {
                
                resultado = calculadora.getAdicao(valorA, valorB);
            
        %>
        A adi&ccedil;&atilde;o de <%=valorA%> + <%=valorB%> = <%=resultado%><p>
            <% } else {
                if (request.getParameter("operacao").equals("subtracao")) {
                    
                    resultado = calculadora.getSubtracao(valorA, valorB);
            %>
            A subtra&ccedil;&atilde;o de <%=valorA%> - <%=valorB%> = <%=resultado%><p>
            <% } else {
                if (request.getParameter("operacao").equals("produto")) {
                                
                    resultado = calculadora.getProduto(valorA, valorB);
            %>
            O produto de <%=valorA%> * <%=valorB%> = <%=resultado%><p>
            <% } else {
                if (request.getParameter("operacao").equals("divisao")) {
                                
                    resultado = calculadora.getDivisao(valorA, valorB);
            %>
            A divis&atilde;o <%=valorA%> / <%=valorB%> = <%=resultado%><p>
            <% } else { %>
            Opera&ccedil;&atilde;o inv&aacute;lida! <p>
            <%
                            }
                        }
                    }
                }
            %>
            <a href="index.jsp"> Novo cálculo </a><p>
    </body>
</html>