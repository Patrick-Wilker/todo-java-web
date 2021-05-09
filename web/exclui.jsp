<%-- 
    Document   : exclui
    Created on : 07/05/2021, 17:17:13
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
            int id = Integer.parseInt(request.getParameter("id"));
            Tarefas tar = new Tarefas();
            TarefaDo tarD = new TarefaDo();
            tar.setId(id);
            tarD.excluirTarefa(tar);
            response.sendRedirect("lstTarefas.jsp");
        %>  
    </body>
</html>
