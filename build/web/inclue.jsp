<%-- 
    Document   : inclue
    Created on : 07/05/2021, 17:00:36
    Author     : Patrick
--%>
<%@page import=" TodoList.TarefaDo " %> 
<%@page import=" TodoList.Tarefas " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String tarefa = request.getParameter("texto");
            Tarefas tar = new Tarefas();
            TarefaDo tarD = new TarefaDo();
            tar.setTexto(tarefa);
            tarD.inserirTarefa(tar);
            response.sendRedirect("lstTarefas.jsp");
        %>
    </body>
</html>
