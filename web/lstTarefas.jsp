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
            
            main ul li{
                list-style: none;
                display: flex;
                align-items: center;
                justify-content: space-between;
                max-width: 700px;
                margin: 5px auto;
                
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
            
            
            
            .delete{
                cursor: pointer;
            }
            .background{
                background: rgba(0, 0, 0, 0.5);
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                
                display: none;
            }
            .background p{
                background: none;
            }
            .box{
                width: 592px;
                height: 233px;
                background: #fff;
                padding: 32px;
            }
            button{
                border: 0;
                border-radius: 4px;
                padding: 8px 25px;
                font-weight: bold;
                font-size: 16px;
                cursor: pointer;
            }
            button.excluir{
                color: #ffffff;
                background: #BD2426;
            }
        </style>
        
        <script>
            function confirme(id){
                document.getElementById('modal').style.display = 'flex';
                document.getElementById('excluir').addEventListener('click', function() {
                    excluir(id);
                });
            }
            function cancelar(){
                document.getElementById('modal').style.display = 'none';
            }
            function excluir(id){
                window.location.href = 'exclui.jsp?id=' + id;
                document.getElementById('modal').style.display = 'none';
            }
            
        </script>
        
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
                        <!--<a href="exclui.jsp?id=<% out.println(tar.getId()); %>" class="material-icons">delete</a>  -->                   
                        <a onclick="confirme(<% out.println(tar.getId()); %>)" class="material-icons delete">delete</a>

                    </div>
                </li>
                
                <div class="background" id="modal">
                    <div class="box">
                        <h1>Excluir tarefa</h1>

                        <p>Tem certeza que deseja excluir esta tarefa?</p>

                        <div>
                            <button type="button" class="cancelar" onclick="cancelar()">Cancelar</button>
                            <button type="button" class="excluir" id="excluir" >Excluir</button>
                        </div>
                    </div>
                </div>
                
                
                <% } %>
                <% if(lstTarefa.isEmpty()) { %>
                    <p>Você  não tem tarefas!</p>
                <% } %>
            </ul>
        </main>
        
    </body>
</html>
