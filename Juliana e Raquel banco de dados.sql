CREATE DATABASE loja;
USE loja;

CREATE TABLE cliente (
	cod_clientes INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL, 
    endereco VARCHAR (150) NOT NULL,
    cidade VARCHAR (100) NOT NULL,
    cep INT (20) NOT NULL
    );
    
CREATE TABLE pedidos(
	num_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    item VARCHAR (255) NOT NULL,
    valor DECIMAL (10,2) NOT NULL,
    cod_clientes INT,
	FOREIGN KEY (cod_clientes) REFERENCES cliente(cod_clientes)
    );
    
SELECT *
FROM cliente

INSERT INTO cliente (nome,endereco, cidade, cep)
VALUES ('JUJU', 'canada','quebec', 02341000);

SELECT *
FROM pedidos	

INSERT INTO pedidos (item, valor, cod_clientes)
VALUES ('rhode', '35,5', 1);



