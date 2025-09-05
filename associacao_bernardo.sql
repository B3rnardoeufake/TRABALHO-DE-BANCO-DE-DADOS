-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/09/2025 às 14:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_bernardo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `data_associado` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `profissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome`, `email`, `CPF`, `cidade`, `comunidade`, `cep`, `data_associado`, `telefone`, `profissao`) VALUES
(1, 'Bernardo Durães', 'bernardo.duraes@gmail.com', '123.456.789-01', 'Belo Horizonte', 'Comunidade Serra', '01001-000', '2022-03-15', '(11) 91234-5678', 'Professor'),
(2, 'Enzo Lougan', 'enzo.lougan@gmail.com', '234.567.890-12', 'Belo Horizonte', 'Comunidade Bimbarra', '20000-000', '2021-07-10', '(21) 99876-5432', 'Engenheiro'),
(3, 'Michael Jeferson', 'michael.jeferson@gmail.com', '345.678.901-23', 'Belo Horizonte', 'Comunidade União', '30100-000', '2023-01-22', '(31) 98765-4321', 'Enfermeiro'),
(4, 'João Vitor Pereira', 'joao.pereira@gmail.com', '456.789.012-34', 'Belo Horizonte', 'Comunidade Vespasiano', '80000-000', '2020-09-05', '(41) 91234-8765', 'Motorista'),
(5, 'Victoria Mendes', 'victoria.mendes@gmail.com', '567.890.123-45', 'Salvador', 'Comunidade Semeadores da Paz', '40000-000', '2024-02-18', '(71) 99876-1234', 'Administradora');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` date NOT NULL,
  `mes_ano_referencia` varchar(50) NOT NULL,
  `pendencia` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `data_de_pagamento` date NOT NULL,
  `id_associado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contribuicao`
--

INSERT INTO `contribuicao` (`id_contribuicao`, `data_vencimento`, `valor_pago`, `mes_ano_referencia`, `pendencia`, `status`, `data_de_pagamento`, `id_associado`) VALUES
(1, '2025-08-10', '0000-00-00', 'Agosto/2025', 'NÃO', 'Pago', '2025-08-10', 1),
(2, '2025-08-10', '0000-00-00', 'Agosto/2025', 'Pagamento em atraso', 'Pendente', '2025-08-15', 2),
(3, '2025-07-10', '0000-00-00', 'Julho/2025', 'NÃO', 'Pago', '2025-07-10', 3),
(4, '2025-09-10', '0000-00-00', 'Setembro/2025', 'Aguardando pagamento', 'Pendente', '2025-09-20', 4),
(5, '2025-06-10', '0000-00-00', 'Junho/2025', 'NÃO', 'Pago', '2026-01-01', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
