/* Banco_Horas: */

CREATE TABLE projetos (
    pk INTEGER PRIMARY KEY,
    titulo VARCHAR,
    descricao VARCHAR,
    fk_coordenador INTEGER,
    status BOOLEAN,
    inicio DATE,
    fim DATE
);

CREATE TABLE atividade (
    pk INTEGER PRIMARY KEY,
    descricao VARCHAR,
    inicio TIMESTAMP,
    fim TIMESTAMP,
    fk_bolsista INTEGER,
    fk_projeto INTEGER
);

CREATE TABLE usuario (
    pk INTEGER PRIMARY KEY,
    nome VARCHAR,
    sobrenome VARCHAR,
    email VARCHAR,
    matricula VARCHAR,
    senha VARCHAR
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
    mensagem VARCHAR,
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
 
ALTER TABLE projetos ADD CONSTRAINT FK_projetos_2
    FOREIGN KEY (fk_coordenador)
    REFERENCES coordenador (pk);
 
ALTER TABLE atividade ADD CONSTRAINT FK_atividade_2
    FOREIGN KEY (fk_bolsista)
    REFERENCES bolsista (pk);
 
ALTER TABLE atividade ADD CONSTRAINT FK_atividade_3
    FOREIGN KEY (fk_projeto)
    REFERENCES projetos (pk);
 
ALTER TABLE bolsista ADD CONSTRAINT FK_bolsista_2
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (pk);
 
ALTER TABLE coordenador ADD CONSTRAINT FK_coordenador_2
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (pk);
 
ALTER TABLE bolsista_projeto ADD CONSTRAINT FK_bolsista_projeto_2
    FOREIGN KEY (fk_bolsista)
    REFERENCES bolsista (pk);
 
ALTER TABLE bolsista_projeto ADD CONSTRAINT FK_bolsista_projeto_3
    FOREIGN KEY (fk_projeto)
    REFERENCES projetos (pk);
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_coordenador)
    REFERENCES coordenador (pk);
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_3
    FOREIGN KEY (fk_bolsista)
    REFERENCES bolsista (pk);
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_4
    FOREIGN KEY (fk_projeto)
    REFERENCES projetos (pk);
 
ALTER TABLE atividade_avaliacao ADD CONSTRAINT FK_atividade_avaliacao_1
    FOREIGN KEY (fk_atividade)
    REFERENCES atividade (pk);
 
ALTER TABLE atividade_avaliacao ADD CONSTRAINT FK_atividade_avaliacao_3
    FOREIGN KEY (fk_avaliacao)
    REFERENCES avaliacao (pk);
 
ALTER TABLE polo_inovacao ADD CONSTRAINT FK_polo_inovacao_2
    FOREIGN KEY (fk_usuario)
    REFERENCES usuario (pk);