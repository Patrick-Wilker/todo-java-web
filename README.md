<h1 align="center">ToDo</h1>

<h2>Projeto</h2>

Trata-se de um sistema de lista de tarefas com objetivo de estudar Java Web.

<h2>Criar banco de dados</h2>

A aplicação faz conexão com o banco de dados MySQL. Para criar o banco de dados com as tabelas execute o seguinte comando no sistema que você usa para gerenciamento.

```
CREATE DATABASE IF NOT EXISTS `todo_list` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `todo_list`;

-- Copiando estrutura para tabela todo_list.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

```
Lembre-se de mudar o usuário e a senha que se conecta ao seu banco de dados na classe Conectar.

<h2>Autor</h2>

* [Patrick Mota](https://github.com/Patrick-Wilker) - Desenvolvimento e documentação

<h2>Licença</h2>

Esse projeto está sobre licença MIT.
