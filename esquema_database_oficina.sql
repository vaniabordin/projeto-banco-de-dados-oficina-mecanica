
-- =====================================================
-- Script de Criação do Banco de Dados
-- Projeto: Banco de Dados - Oficina Mecânica
-- Descrição: Criação do esquema relacional com constraints
-- =====================================================

create database Oficina;
use Oficina;

-- Create Table

Create table Clientes (
id_cliente int auto_increment,
nome varchar(100) not null,
telefone varchar(20) not null,
email varchar(20) unique, 
constraint pf_client primary key (id_cliente)
);

create table Veiculo (
id_veiculo int auto_increment,
placa varchar(10) not null,
modelo varchar(50) not null,
ano int not null,
id_cliente int not null,
constraint pk_veiculo primary key (id_veiculo),
constraint uq_placa unique (placa),
constraint fk_veiculo_cliente foreign key (id_cliente) references clientes(id_cliente)
on delete cascade 
on update cascade,
constraint chk_ano_veiculo check (ano>=1980)
);

create table Mecanico (
id_mecanico int auto_increment,
nome varchar(100) not null,
especialidade varchar(50) not null,
constraint pk_mecanico primary key (id_mecanico)
);


create table Servico (
id_servico int auto_increment,
descricao varchar(255) not null,
valor_maoObra decimal(10,2) not null,
constraint pk_servico primary key (id_servico),
constraint chk_valor_servico check (valor_maoObra > 0)
);

create table peca (
id_peca int auto_increment,
descricao varchar(100) not null,
valor_unitario decimal(10,2) not null,
constraint pk_peca primary key (id_peca),
constraint chk_valor_unitario check (valor_unitario > 0)
);

create table ordem_servico (
id_OServico int auto_increment,
data_abertura date not null,
status varchar(30) not null,
id_veiculo int not null,
id_mecanico int not null,
constraint pk_OServico primary key (id_OServico),
constraint chk_status_Os check (status in ('Abertura', 'Em Andamento', 'Finalizada')),
constraint fk_Os_veiculo foreign key (id_veiculo) references Veiculo (id_veiculo)
on delete restrict
on update cascade,
constraint fk_Os_mecaninco foreign key (id_mecanico) references Mecanico (id_mecanico)
on delete restrict
on update cascade
);

create table OS_Servico (
id_OServico int,
id_servico int,
quantidade int not null,
constraint pk_os_servico primary key (id_OServico, id_servico),
constraint fk_os_servico_os foreign key (id_OServico) references ordem_servico(id_OServico)
on delete cascade,
constraint fk_os_servico_servico foreign key (id_servico) references Servico(id_servico),
constraint chk_qtd_servico check (quantidade > 0)
);

create table OS_Peca (
id_OServico int,
id_peca int,
quantidade int not null,
constraint pk_os_peca primary key (id_OServico, id_peca),
constraint fk_os_peca_os foreign key (id_OServico) references Ordem_Servico(id_OServico)
on delete cascade,
constraint fk_os_peca_peca foreign key (id_peca) references Peca(id_peca),
constraint chk_qtd_peca check (quantidade > 0)
);

-- Insert --

INSERT INTO Clientes (nome, telefone, email)
VALUES 
('Carlos Silva', '11999999999', 'carlos@email.com'),
('Ana Souza', '11888888888', 'ana@email.com');

INSERT INTO Veiculo (placa, modelo, ano, id_cliente)
VALUES
('ABC1234', 'Onix', 2020, 1),
('XYZ5678', 'Civic', 2018, 2);

INSERT INTO Mecanico (nome, especialidade)
VALUES
('João Mecânico', 'Motor'),
('Pedro Técnico', 'Suspensão');

INSERT INTO Servico (descricao, valor_maoObra)
VALUES
('Troca de óleo', 150.00),
('Alinhamento', 200.00);

INSERT INTO Peca (descricao, valor_unitario)
VALUES
('Filtro de óleo', 50.00),
('Pneu', 400.00);

INSERT INTO Ordem_Servico (data_abertura, status, id_veiculo, id_mecanico)
VALUES
('2024-05-01', 'Finalizada', 1, 1),
('2024-05-02', 'Em andamento', 2, 2);

INSERT INTO OS_Servico VALUES
(1, 1, 1),
(1, 2, 1),
(2, 2, 1);

INSERT INTO OS_Peca VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 4);

-- Select básicos

Select * from clientes;
select * from veiculo;
select * from mecanico;
select * from servico;
select * from peca;
select * from ordem_servico;
select * from os_servico;
select * from os_peca;

-- Select com where, Group by, order by, join, having

-- Quais ordens de serviço estão finalizadas?
SELECT * 
FROM Ordem_Servico
WHERE status = 'Finalizada';

-- Quais ordens de serviço estão Em andamento?
select *
from Ordem_Servico
where status = 'Em andamento';

-- Quais veículos pertencem a cada cliente?
SELECT c.nome AS cliente, v.modelo, v.placa
FROM Clientes c
JOIN Veiculo v ON c.id_cliente = v.id_cliente;

-- Qual o valor total de peças usadas em cada OS?
SELECT 
    op.id_OServico,
    SUM(op.quantidade * p.valor_unitario) AS total_pecas
FROM OS_Peca op
JOIN Peca p ON op.id_peca = p.id_peca
GROUP BY op.id_OServico;

-- Qual o valor total da mão de obra por OS?
SELECT 
    os.id_OServico,
    SUM(s.valor_maoObra * oss.quantidade) AS total_mao_obra
FROM Ordem_Servico os
JOIN OS_Servico oss ON os.id_OServico = oss.id_oServico
JOIN Servico s ON oss.id_servico = s.id_servico
GROUP BY os.id_OServico;

-- Quais OS têm custo total acima de R$500?
SELECT 
    os.id_OServico,
    SUM(op.quantidade * p.valor_unitario) AS total_pecas
FROM Ordem_Servico os
JOIN OS_Peca op ON os.id_OServico = op.id_OServico
JOIN Peca p ON op.id_peca = p.id_peca
GROUP BY os.id_OServico
HAVING total_pecas > 500;

-- Quais serviços foram mais utilizados? (ORDER BY)
SELECT 
    s.descricao,
    SUM(oss.quantidade) AS total_execucoes
FROM Servico s
JOIN OS_Servico oss ON s.id_servico = oss.id_servico
GROUP BY s.descricao
ORDER BY total_execucoes DESC;

