<%-- 
    Document   : index
    Created on : 07/05/2021, 16:55:44
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Tarefa</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
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
            
            main form{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            main form input{
                padding: 6px 10px;
                color: #1c1c1c;
                border: 1px solid rgba(0,0,0,0.5);
                border-radius: 4px;
            }
            #id{
                display: none;
            }
            main form button{
                padding: 8px 10px;
                background: #07BC0C;
                color: #fff;
                font-weight: bold;
                border: 0;
                border-radius: 4px;
                margin-left: 10px;
                transition: 0.5s;
            }
            main form button:hover{
                cursor: pointer;
                background: #069b08;
            }
        </style>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("id").trim());
            String texto = request.getParameter("texto").trim();
        %>
         <header>
            <h1><a href="index.jsp">TodoList</a></h1>
            <a href="lstTarefas.jsp">Minhas tarefas</a>
        </header>
        <main>
            <h1>Altere sua tarefa</h1>
            <form id= "alteraTarefa" method="post" action="altera.jsp">
              <input type="text" id="id" name="id" value="<% out.println(id); %>">
              <input type="text" name="texto" required="required" value="<% out.println(texto); %>">
              <button type="submit" name="btnSalvar">Salvar</button>
            </form>
        </main>
        
        <br>
    </body>
</html>
