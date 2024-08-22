CREATE DATABASE meuprojeto;
USE meuprojeto;
drop database meuprojeto;
CREATE TABLE Tarefas (
    id int PRIMARY KEY auto_increment,
    nome varchar(80),
    descricao varchar(80),
    fk_Usuario_id int
);

CREATE TABLE Usuario (
    id int PRIMARY KEY auto_increment,
    nome varchar(80)
);
 
ALTER TABLE Tarefas ADD CONSTRAINT FK_Tarefas_2
    FOREIGN KEY (fk_Usuario_id)
    REFERENCES Usuario (id)
    ON DELETE RESTRICT;
    
insert into usuario (nome) values
('Joao'),
('Gabriel'),
('Gustavo'),
('Gabriela'),
('Marina');
select*from usuario;

insert into tarefas (nome, descricao, fk_Usuario_id) values
('cozinha','lavar a louca',5),
('Casa','Limpar a casa',3),
('Quarto','Arrumar o quarto',2);
select*from tarefas;

select*from usuario;
select*from tarefas;

select
t.nome as tarefas,
u.nome as usuario
from
tarefas t
join
usuario u
on
t.fk_Usuario_id=u.id; 
    
    
    
    