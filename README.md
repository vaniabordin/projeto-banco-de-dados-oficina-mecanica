# Projeto Banco de Dados – Oficina Mecânica 🛠️

Este projeto foi desenvolvido como parte de um desafio prático de modelagem de dados. O objetivo é criar um ecossistema completo para uma **Oficina Mecânica**, percorrendo desde o levantamento de requisitos (Modelo ER) até a implementação física e consultas complexas via SQL.

## 📌 Conteúdo do Projeto
O projeto contempla todas as etapas exigidas no desafio:
* **Esquema Lógico:** Tradução do modelo conceitual para o modelo relacional.
* **Script SQL de Criação:** Definição de tabelas, constraints e chaves.
* **Persistência de Dados:** Inserção de dados fictícios para testes de cenário.
* **Queries Complexas:** Consultas utilizando `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING` e `JOIN`.

---

## 📐 Modelo Lógico e Regras de Negócio
O esquema foi projetado para garantir a integridade referencial e o controle total do fluxo de trabalho da oficina:
* **Clientes e Veículos:** Um cliente pode ter vários veículos, mas cada veículo pertence a um único dono.
* **Ordens de Serviço (OS):** Centralizam a relação entre o veículo, o mecânico responsável, os serviços executados e as peças aplicadas.
* **Tabelas Associativas:** Utilizadas para gerenciar a relação N:N entre Ordens de Serviço e Peças/Serviços.
* **Integridade:** Aplicação de `CHECK constraints` para evitar valores negativos e controle de status de serviço.

---

## 🖼️ Diagrama Entidade-Relacionamento (ER)
Abaixo, a visualização do modelo que serviu de base para a implementação:

![Diagrama ER da Oficina Mecânica](./Diagram_ER_Oficina.png)

---

## 🚀 Como Executar o Projeto
### 1. Clone o repositório:

```bash
git clone https://github.com/vaniabordin/projeto-banco-de-dados-oficina-mecanica.git
