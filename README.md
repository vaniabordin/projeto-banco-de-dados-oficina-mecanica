Projeto Banco de Dados – Oficina Mecânica 🛠️
Este projeto foi desenvolvido como parte de um desafio prático de modelagem de dados. O objetivo é criar um ecossistema completo para uma Oficina Mecânica, percorrendo desde o levantamento de requisitos (Modelo ER) até a implementação física e consultas complexas via SQL.

📌 Conteúdo do Projeto
O projeto contempla todas as etapas exigidas no desafio:

Esquema Lógico: Tradução do modelo conceitual para o modelo relacional.

Script SQL de Criação: Definição de tabelas, constraints e chaves.

Persistência de Dados: Inserção de dados fictícios para testes de cenário.

Queries Complexas: Consultas utilizando SELECT, WHERE, ORDER BY, GROUP BY, HAVING e JOIN.

📐 Modelo Lógico e Regras de Negócio
O esquema foi projetado para garantir a integridade referencial e o controle total do fluxo de trabalho da oficina:

Clientes e Veículos: Um cliente pode ter vários veículos, mas cada veículo pertence a um único dono.

Ordens de Serviço (OS): Centralizam a relação entre o veículo, o mecânico responsável, os serviços executados e as peças aplicadas.

Tabelas Associativas: Utilizadas para gerenciar a relação N:N entre Ordens de Serviço e Peças/Serviços.

Integridade: Aplicação de CHECK constraints para evitar valores negativos e Default para status de serviço.

🖼️ Diagrama Entidade-Relacionamento (ER)
Abaixo, a visualização do modelo que serviu de base para a implementação:

🚀 Como Executar o Projeto
Clone o repositório:

Bash
git clone https://github.com/vaniabordin/projeto-banco-de-dados-oficina-mecanica.git

Criação do Banco e Dados: Toda a estrutura de tabelas e a inserção de dados para teste estão consolidadas no arquivo principal. Basta executá-lo em seu SGBD (MySQL/PostgreSQL):

👉 esquema_database_oficina.sql

🔍 Desafio de Queries (Perguntas Respondidas)
Para atender aos requisitos de protagonismo e complexidade, o script contém queries que respondem às seguintes perguntas de negócio:

Recuperação Simples: Listar todos os clientes cadastrados.

Filtros e Atributos Derivados: Qual o valor total de cada OS (Peças + Mão de Obra)?

Ordenação: Quais são as OS mais caras, ordenadas do maior para o menor valor?

Filtros em Grupos (Having): Quais mecânicos possuem mais de 3 OS finalizadas no mês?

Junções Complexas: Exibir o nome do cliente, placa do carro, nome do mecânico e o status de todas as OS atuais.


Aqui está o conteúdo completo, formatado e pronto para você copiar:

Projeto Banco de Dados – Oficina Mecânica 🛠️
Este projeto foi desenvolvido como parte de um desafio prático de modelagem de dados. O objetivo é criar um ecossistema completo para uma Oficina Mecânica, percorrendo desde o levantamento de requisitos (Modelo ER) até a implementação física e consultas complexas via SQL.

📌 Conteúdo do Projeto
O projeto contempla todas as etapas exigidas no desafio:

Esquema Lógico: Tradução do modelo conceitual para o modelo relacional.

Script SQL de Criação: Definição de tabelas, constraints e chaves.

Persistência de Dados: Inserção de dados fictícios para testes de cenário.

Queries Complexas: Consultas utilizando SELECT, WHERE, ORDER BY, HAVING e JOIN.

📐 Modelo Lógico e Regras de Negócio
O esquema foi projetado para garantir a integridade referencial e o controle total do fluxo de trabalho da oficina:

Clientes e Veículos: Um cliente pode ter vários veículos, mas cada veículo pertence a um único dono.

Ordens de Serviço (OS): Centralizam a relação entre o veículo, o mecânico responsável, os serviços executados e as peças aplicadas.

Tabelas Associativas: Utilizadas para gerenciar a relação N:N entre Ordens de Serviço e Peças/Serviços.

Integridade: Aplicação de CHECK constraints para evitar valores negativos e Default para status de serviço.

🖼️ Diagrama Entidade-Relacionamento (ER)
Abaixo, a visualização do modelo que serviu de base para a implementação:

🚀 Como Executar o Projeto
Clone o repositório:

Bash
git clone https://github.com/vaniabordin/projeto-banco-de-dados-oficina-mecanica.git
Criação do Banco e Dados: Toda a estrutura de tabelas e a inserção de dados para teste estão consolidadas no arquivo principal. Basta executá-lo em seu SGBD (MySQL/PostgreSQL):

👉 esquema_database_oficina.sql

🔍 Desafio de Queries (Perguntas Respondidas)
Para atender aos requisitos de protagonismo e complexidade, o script contém queries que respondem às seguintes perguntas de negócio:

Recuperação Simples: Listar todos os clientes cadastrados.

Filtros e Atributos Derivados: Qual o valor total de cada OS (Peças + Mão de Obra)?

Ordenação: Quais são as OS mais caras, ordenadas do maior para o menor valor?

Filtros em Grupos (Having): Quais mecânicos possuem mais de 3 OS finalizadas no mês?

Junções Complexas: Exibir o nome do cliente, placa do carro, nome do mecânico e o status de todas as OS atuais.

📂 Estrutura do Repositório
Diferente da estrutura padrão, os scripts estão organizados para fácil acesso direto na raiz:

Diagram_ER_Oficina.png: Imagem do modelo conceitual.

esquema_database_oficina.sql: Script unificado contendo DDL (Criação), DML (Persistência) e as Queries de desafio.
