# Banco de horas. 
## Objetivo
Projeto de iniciação científica Do Polo de inovações Vitória, localizado no IFES campus Vitória, para um sistema de contabilização de horas e automação de criaçãod e documentos.  
## Descrição  
O sistema do banco de horas deve ser utilizado por bolsistas e coordenadores de projetos de iniciação científica do Polo de Inovação, cada projeto deve ter um coordenador responsável, sendo que cada coordenador pode ter projetos até completar o total de horas disponivels por semestre.  
Cada Usuário pode autenticar-se no sistema, seja por email ou matricula e uma senha escolhida pelo próprio usuário.  
Os bolsistas podem: logar-se, inserir atividades, atualizar atividades e verificar avaliação do coordenador.
Uma atividade precisa ter um tempo de duração ou seja (inicio e fim), sendo que o sistema deve impedir o bolsista lançar atividades em datas futuras. As atividades devem conter uma descrição textual inseirdas pelo bolsista com o que foi feito.  
As atividades vão aparecer agrupadas em até 5 em 5 de cada bolsista para o coordenador avaliar,o coordenador deve ver as atividades dos bolsistas e avaliar como POSITIVO ou NEGATIVO.  
Em cado de negativo o coordenador deve inserir um comentário para o bolsista alterar suas atividades.
<br>  
Os projetos são compostos por: 1 coordenador, 2 ou mais bolsistas. Um projeto deve ser cadastrado com título, uma descrição, uma data de inicio, uma data de fim e membros.  
Ao fim do trabalho o coordenador pode gerar um pdf com as atividades feitas do bolsistas com as horas trabalhadas de cada um e do projeto geral.

Faz-se necessário um controle de projetos e usuários pelo Polo de inovação, O sistema deve ter um módulo de acesso para cadastro de usuários: bolsistas e coordenadores, podendo gerir projetos com as devidas alocações. 
## Modelagem

### 2.1 Modelo UML  
![UML](/modelos/uml.jpeg)  
### 2.2 Modelo lógico do banco de dados  
![Banco de horas](/modelos/Banco_Horas.png)  
### 2.3 Modelo Físico   
```
/* Banco_Horas: */

CREATE TABLE projetos (
    pk INTEGER PRIMARY KEY,
    titulo VARCHAR(100),
    descricao VARCHAR(255),
    fk_coordenador INTEGER,
    status BOOLEAN,
    inicio DATE,
    fim DATE
);

CREATE TABLE atividade (
    pk INTEGER PRIMARY KEY,
    descricao VARCHAR(255),
    inicio TIMESTAMP,
    fim TIMESTAMP,
    fk_bolsista INTEGER,
    fk_projeto INTEGER
);

CREATE TABLE usuario (
    pk INTEGER PRIMARY KEY,
    nome VARCHAR(30),
    sobrenome VARCHAR(50),
    email VARCHAR(75),
    matricula VARCHAR(50),
    senha VARCHAR(255)
);

CREATE TABLE bolsista (
    pk INTEGER PRIMARY KEY,
    fk_usuario INTEGER
);

CREATE TABLE coordenador (
    pk INTEGER PRIMARY KEY,
    fk_usuario INTEGER
);

CREATE TABLE bolsista_projeto (
    pk INTEGER PRIMARY KEY,
    fk_bolsista INTEGER,
    fk_projeto INTEGER
);

CREATE TABLE avaliacao (
    pk INTEGER PRIMARY KEY,
    fk_coordenador INTEGER,
    fk_bolsista INTEGER,
    fk_projeto INTEGER,
    mensagem VARCHAR(255),
    status BOOLEAN
);

CREATE TABLE atividade_avaliacao (
    pk INTEGER PRIMARY KEY,
    fk_atividade INTEGER,
    fk_avaliacao INTEGER
);

CREATE TABLE polo_inovacao (
    pk INTEGER PRIMARY KEY,
    fk_usuario INTEGER
);
```
[Código completo aqui](/modelos/modelo_fisico.sql)  
### 2.3 Diagrama de casos de uso  
```
```  
## Desenvolvimento
O desenvolvimento será guiado por história de usuário para medida de progresso.

### 3.1 Estrutura
- [ ] Tarefa 1
- [x] Tarefa 2
- [x] Tarefa 3
- [x] Tarefa 4
- [ ] Tarefa 5
- [ ] Tarefa 6
- [ ] Tarefa 7
- [ ] Tarefa 8
- [ ] Tarefa 9  

### 3.2 Apresentação
- [ ] Tarefa 1
- [x] Tarefa 2
- [x] Tarefa 3
- [x] Tarefa 4
- [ ] Tarefa 5
- [ ] Tarefa 6
- [ ] Tarefa 7
- [ ] Tarefa 8
- [ ] Tarefa 9