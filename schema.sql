-- Criar banco (opcional)
-- CREATE DATABASE cafeteria;
-- USE cafeteria;

-- Tabela Produtos
CREATE TABLE Produtos (
  id_produto INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0),
  estoque INT NOT NULL CHECK (estoque >= 0)
);

-- Tabela Clientes
CREATE TABLE Clientes (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  email VARCHAR(120) UNIQUE,
  telefone VARCHAR(20)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
  id_pedido INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
  status ENUM('ABERTO','PAGO','CANCELADO') DEFAULT 'ABERTO',
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Tabela ItensPedido
CREATE TABLE ItensPedido (
  id_item INT PRIMARY KEY AUTO_INCREMENT,
  id_pedido INT NOT NULL,
  id_produto INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  preco_unitario DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
  FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
