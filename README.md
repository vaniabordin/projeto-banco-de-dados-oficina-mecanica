# Projeto Banco de Dados – Oficina Mecânica 🛠️

Este projeto consiste na modelagem e implementação de um sistema de gerenciamento para uma oficina mecânica, cobrindo todo o ciclo de vida do banco de dados.
---

## 📌 Conteúdo do Projeto

O repositório está organizado da seguinte forma:

1.  **Modelo Conceitual:** Diagrama ER detalhando as entidades e relacionamentos.
2.  **Esquema Lógico:** Definição das tabelas, chaves primárias e estrangeiras.
3.  **Script SQL:** Código para criação do banco de dados e inserção de dados.
4.  **Queries SQL:** Consultas para extração de relatórios e métricas.

---

## 📐 Modelagem de Dados

### Modelo Entidade-Relacionamento (ER)
Abaixo, a representação visual da estrutura do banco de dados:

![Diagrama ER](./Diagram_ER_Oficina.png)

> **Nota:** O diagrama contempla entidades como Clientes, Veículos, Ordens de Serviço (OS), Mecânicos, Peças e Serviços.

---

## 🚀 Como Executar o Projeto

1. Clone o repositório:
 git clone https://github.com/vaniabordin/projeto-banco-de-dados-oficina-mecanica.git

2.Criação do Esquema e Dados: O arquivo principal contém toda a estrutura de tabelas e dados de teste. Execute-o no MySQL Workbench:
👉 [**Baixar Script de Criação (SQL)**](./esquema_database_oficina.sql)


## 🔍 Exemplos de Consultas (Queries)

O projeto inclui análises de dados como:

* **Recuperação simples:** Listagem de todos os veículos e seus respectivos donos.
* **Filtros (Where):** Buscar ordens de serviço abertas com valor superior a R$ 500,00.
* **Atributos Derivados:** Cálculo do valor total de uma OS (Mão de obra + Peças).
* **Ordenação:** Ranking de mecânicos por quantidade de serviços realizados.
* **Filtros em Grupos (Having):** Listar serviços que aparecem em mais de 5 ordens de serviço.
* **Junções (Joins):** Relatório completo unindo Cliente, Veículo e status da Ordem de Serviço.

---

## 🛠️ Tecnologias Utilizadas

* **SQL** (Linguagem de consulta)
* **MySQL / Workbench** (Ou outra ferramenta que você utilizou)
* **Git & GitHub** (Versionamento)
