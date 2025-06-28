-- Criação da tabela produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserção de registros na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Livro A', 25.90),
(2, 'Livro B', 30.50),
(3, 'Livro C', 40.00);

-- Inserção de registros na tabela pedidos
INSERT INTO pedidos (id, id_produto, quantidade) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 2, 4);
