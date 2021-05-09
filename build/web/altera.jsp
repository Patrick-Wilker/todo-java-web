<%-- 
    Document   : altera
    Created on : 07/05/2021, 17:55:39
    Author     : Patrick
--%>
<%@page import=" TodoList.TarefaDo " %> 
<%@page import=" TodoList.Tarefas " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterado</title>
    </head>
    <body>
         <%
            int id = Integer.parseInt(request.getParameter("id").trim());
            String texto = request.getParameter("texto").trim();

            Tarefas tar = new Tarefas();     
            TarefaDo tarD = new TarefaDo();
            tar.setId(id);
            tar.setTexto(texto);
            tarD.alteraTarefa(tar);

            response.sendRedirect("lstTarefas.jsp");
        %>  
    </body>
</html>
