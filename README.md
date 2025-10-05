# 📚 Banco de Dados - Módulo 3

Projeto desenvolvido como parte da disciplina **Modelagem e Manipulação de Banco de Dados** no curso de **Tecnologia da Informação – UFMS (EAD)**.

O objetivo é praticar:
- Criação de tabelas relacionais.  
- Inserção, atualização, exclusão e consulta de dados.  
- Uso do **Git/GitHub** para versionamento de código.  

---

## 🗂 Estrutura do Banco de Dados

### Tabelas

**Produtos**
- `id_produto` (PK, inteiro, auto incremento)  
- `nome` (texto, obrigatório)  
- `preco` (decimal, obrigatório)  
- `estoque` (inteiro, obrigatório)  

**Clientes**
- `id_cliente` (PK, inteiro, auto incremento)  
- `nome` (texto, obrigatório)  
- `email` (texto, obrigatório)  
- `telefone` (texto, obrigatório)  

**Pedidos**
- `id_pedido` (PK, inteiro, auto incremento)  
- `id_cliente` (FK → Clientes.id_cliente)  
- `status` (texto, obrigatório)  

**ItensPedido**
- `id_item` (PK, inteiro, auto incremento)  
- `id_pedido` (FK → Pedidos.id_pedido)  
- `id_produto` (FK → Produtos.id_produto)  
- `quantidade` (inteiro, obrigatório, > 0)  
- `preco_unitario` (decimal, obrigatório)  

---

## 📥 Inserção de Dados

Exemplo de inserts usados no script:

```sql
-- Produtos
INSERT INTO Produtos (nome, preco, estoque) VALUES
('Café expresso', 6.00, 100),
('Cappuccino', 12.00, 50),
('Croissant', 8.5
