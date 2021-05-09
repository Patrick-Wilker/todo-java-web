<%-- 
    Document   : lstTarefas
    Created on : 07/05/2021, 16:41:15
    Author     : Patrick
--%>

<%@page import="java.util.List"%>
<%@page import=" TodoList.TarefaDo " %> 
<%@page import=" TodoList.Tarefas " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Tarefas</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <style>
            html{
                font-family: Roboto;
            }
            a{
                text-decoration: none;
                color: black;
            }
            header{
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 5px 20px;
            }
            main{
                text-align: center;
            }
            main ul{
                margin-top: 50px;
            }
            
            main ul li+li{
                margin-top: 10px;
            }
            
            main ul li{
                list-style: none;
                display: flex;
                align-items: center;
                justify-content: space-between;
                max-width: 700px;
                margin: auto;
                
                background: rgba(0, 113, 227, 0.3);
                border-radius: 4px;
                padding: 5px 15px;
            }
            main p{
                font-size: 18px;
                max-width: 700px;
                margin: auto;
                
                background: rgb(238, 238, 239);
                border-radius: 4px;
                padding: 30px 15px;
            }
        </style>
    </head>
    <body>
        <% 
         TarefaDo tard = new TarefaDo();
         List<Tarefas> lstTarefa = tard.listaTarefas();
        %>
        <header>
            <h1><a href="index.jsp">TodoList</a></h1>
            <a href="lstTarefas.jsp">Minhas tarefas</a>
        </header>
        
        <main>
            <h1>Tarefas</h1>
            <ul>
                <%    for (Tarefas tar : lstTarefa) { %>
                <li>
                    <% out.println(tar.getTexto()); %>
                    <div>
                        <a href="alterando.jsp?id=<%out.println(tar.getId());%>&texto=<% out.println(tar.getTexto());%>" class="material-icons">mode_edit</a>                        
                        <a href="exclui.jsp?id=<% out.println(tar.getId()); %>" class="material-icons">delete</a>
                    </div>
                </li>
                <% } %>
                <% if(lstTarefa.isEmpty()) { %>
                    <p>Você  não tem tarefas!</p>
                <% } %>
            </ul>
        </main>
        
    </body>
</html>
