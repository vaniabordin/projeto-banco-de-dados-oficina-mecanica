# Projeto Banco de Dados – Oficina Mecânica

Este projeto tem como objetivo aplicar os conceitos de modelagem de banco de dados,
partindo do modelo conceitual (ER) até a implementação do modelo relacional.

## Conteúdo do Projeto
- Esquema lógico do banco de dados
- Script SQL para criação das tabelas
- Inserção de dados para testes
- Queries SQL com:
  - SELECT
  - WHERE
  - JOIN
  - GROUP BY
  - HAVING
  - ORDER BY
  - Atributos derivados

O cenário modelado representa uma oficina mecânica com controle de clientes,
veículos, mecânicos, ordens de serviço, serviços realizados e peças utilizadas.

## Modelo Lógico

O modelo lógico foi construído a partir do modelo conceitual (ER) e segue o paradigma
relacional. O esquema contempla:

- Entidades principais: Clientes, Veículo, Mecânico, Serviço, Peça e Ordem de Serviço
- Relacionamentos do tipo 1:N e N:N
- Tabelas associativas para resolução de relacionamentos N:N
- Definição de chaves primárias e estrangeiras
- Aplicação de constraints para garantir integridade referencial e de domínio

## Regras de Negócio

- Um cliente pode possuir um ou mais veículos
- Um veículo pertence a apenas um cliente
- Uma ordem de serviço está associada a um único veículo e a um mecânico
- Uma ordem de serviço pode conter múltiplos serviços e múltiplas peças
- Não é permitido registrar valores negativos para serviços ou peças
- O status da ordem de serviço é controlado por domínio predefinido

## Exemplos de Consultas SQL

Algumas perguntas que podem ser respondidas pelas consultas implementadas:

- Quais ordens de serviço estão finalizadas?
- Quais ordens de serviço estão em andamento?
- Quais veículos pertencem a cada cliente?
- Qual o valor total gasto em peças por ordem de serviço?
- Qual o valor total da mão de obra por OS?
- Quais OS têm custo total acima de R$500?
- Quais serviços são mais executados na oficina?

## Como Executar o Projeto

1. Clone este repositório

    ```bash
      git clone https://github.com/vaniabordin/projeto-banco-de-dados-oficina-mecanica.git

### Diagrama Entidade-Relacionamento (ER)
![Diagrama ER](docs/Diagrama_ER_Oficina.png)

## Estrutura do Repositório

- /sql
  - create_tables.sql
  - insert_data.sql
  - queries.sql
- README.md

## Conclusão

Este projeto permitiu aplicar de forma prática os conceitos de modelagem de banco
de dados, garantindo integridade, consistência e capacidade de recuperação de
informações relevantes para o contexto de uma oficina mecânica.



