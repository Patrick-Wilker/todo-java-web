package TodoList;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class TarefaDo {
    private final Connection conn;

    public TarefaDo() throws SQLException {
        this.conn = conexao.Conectar.conectar();
    }
    
    public void inserirTarefa(Tarefas tarefa) throws SQLException{
        String insertTar = "INSERT INTO tasks(texto) VALUES(?)";
        PreparedStatement stmtInsert = this.conn.prepareStatement(insertTar);
        stmtInsert.setString(1, tarefa.getTexto());
        stmtInsert.execute();
        stmtInsert.close();
    }
    
    public List<Tarefas> listaTarefas() throws SQLException{
        String consulta = "SELECT * FROM tasks";
        PreparedStatement stmtListTarefa = this.conn.prepareStatement(consulta);
        ResultSet rslt = stmtListTarefa.executeQuery();
        List<Tarefas> lstTask = new ArrayList<>();
        while(rslt.next()){
            Tarefas tar = new Tarefas();
            tar.setId(rslt.getInt("id"));
            tar.setTexto(rslt.getString("texto"));
            lstTask.add(tar);
        }
        rslt.close();
        stmtListTarefa.close();
        return lstTask;
    }
    
    public void alteraTarefa(Tarefas tarefa) throws SQLException{
        String alteracao = "UPDATE tasks SET texto = ? WHERE id = ?";
        PreparedStatement stmtAltera = this.conn.prepareStatement(alteracao);
        stmtAltera.setString(1, tarefa.getTexto());
        stmtAltera.setInt(2, tarefa.getId());
        stmtAltera.execute();
        stmtAltera.close();
    }
    
    public void excluirTarefa(Tarefas tarefa) throws SQLException{
        String excluir = "DELETE FROM tasks WHERE id = ?";
        PreparedStatement stmtExcluiTarefa = this.conn.prepareStatement(excluir);
        stmtExcluiTarefa.setInt(1, tarefa.getId());
        stmtExcluiTarefa.execute();
        stmtExcluiTarefa.close();
    }
}
