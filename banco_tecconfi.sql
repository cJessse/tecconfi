-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/11/2025 às 00:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_tec`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `servico` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `aprovado` tinyint(1) DEFAULT 0,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `nome`, `email`, `telefone`, `servico`, `descricao`, `aprovado`, `data_cadastro`) VALUES
(1, 'Maria Silva', 'maria@email.com', '(49) 99999-1111', 'Manutenção Preventiva', 'Notebook Lenovo travando muito', 0, '2025-08-14 15:43:59'),
(2, 'João Santos', 'joao@email.com', '(49) 99999-2222', 'Upgrade de Hardware', 'Quero trocar HD por SSD no meu desktop', 1, '2025-09-29 21:03:15'),
(3, 'Ana Costa', 'ana@email.com', '(49) 99999-3333', 'Remoção de Vírus', 'PC com muitos pop-ups e lento', 1, '2025-07-14 11:54:37'),
(4, 'Pedro Oliveira', 'pedro@email.com', '(49) 99999-4444', 'Manutenção Preventiva', 'Limpeza e formatação do notebook Dell', 1, '2025-09-16 13:41:19'),
(5, 'Carla Mendes', 'carla@email.com', '(49) 99999-5555', 'Upgrade de Hardware', 'Aumentar memória RAM de 4GB para 16GB', 0, '2025-10-04 00:00:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` varchar(100) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `curtidas` int(11) DEFAULT 0,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `preco`, `imagem`, `curtidas`, `data_cadastro`) VALUES
(1, 'Manutenção Preventiva', 'Check-up completo com limpeza interna e otimização de sistema para evitar problemas futuros.', 'Taxa Fixa', 'img/tecnico_limpando_pc.jpg', 16, '2025-11-25 22:43:59'),
(2, 'Remoção de Vírus e Malware', 'Eliminação completa de ameaças digitais e reforço na segurança do seu sistema.', 'Taxa Fixa', 'img/scanner_virus_protegido.jpg', 25, '2025-11-25 22:43:59'),
(3, 'Upgrade de Hardware', 'Análise e instalação de componentes como SSD e RAM para turbinar sua máquina.', 'Sob Consulta', 'img/hardware.jpg', 20, '2025-11-25 22:43:59');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
