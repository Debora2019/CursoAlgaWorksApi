CREATE TABLE public.categoria
(
codigo bigserial,
nome character varying(50),
CONSTRAINT pkey_categoria PRIMARY KEY (codigo)
)
WITH (
OIDS = FALSE
)
;

INSERT INTO categoria (nome) values ('LAZER');
INSERT INTO categoria (nome) values ('ALIMENTAÇÃO');
INSERT INTO categoria (nome) values ('FARMÁCIA');
INSERT INTO categoria (nome) values ('ROUPAS');
INSERT INTO categoria (nome) values ('OUTROS');






-- CREATE TABLE categoria (
-- codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
-- nome VARCHAR(50) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- INSERT INTO categoria (nome) values ('Lazer');
-- INSERT INTO categoria (nome) values ('Alimentação');
-- INSERT INTO categoria (nome) values ('Supermercado');
-- INSERT INTO categoria (nome) values ('Farmácia');
-- INSERT INTO categoria (nome) values ('Outros');