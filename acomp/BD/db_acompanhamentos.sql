-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 02:32
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_acompanhamentos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_acompanhamentos`
--

CREATE TABLE `tbl_acompanhamentos` (
  `acomp_id` int(11) NOT NULL,
  `acomp_chamado` int(11) NOT NULL,
  `acomp_data` varchar(255) NOT NULL,
  `acomp_horario` varchar(255) NOT NULL,
  `acomp_cliente` varchar(255) NOT NULL,
  `acomp_tecnico` varchar(255) NOT NULL,
  `acomp_local` varchar(255) NOT NULL,
  `acomp_ecm` varchar(255) DEFAULT NULL,
  `acomp_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_acompanhamentos`
--

INSERT INTO `tbl_acompanhamentos` (`acomp_id`, `acomp_chamado`, `acomp_data`, `acomp_horario`, `acomp_cliente`, `acomp_tecnico`, `acomp_local`, `acomp_ecm`, `acomp_status`) VALUES
(21, 245542, '2019-12-30', '22:22', 'telex', 'thiago', 'edificio garagem', '454145', 'Agendado'),
(22, 822655, '2019-12-31', '23:00', 'aÃ§aiteria', 'james', 'Torre antiga', '852456', 'Agendado'),
(23, 545165, '2022-02-28', '23:59', 'J&T', 'Fulano', 'Terminal 1', '555555', 'Em Andamento'),
(24, 554545, '2020-01-31', '23:59', 'vbnm', 'bnm,', 'DFNM,', '514444', 'Em Andamento'),
(25, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(26, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(27, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(28, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(29, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(30, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(31, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(32, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(33, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(34, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(35, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(36, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(37, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(38, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(39, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(40, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(41, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(42, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(43, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(44, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(45, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(46, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(47, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado'),
(48, 201254, '2020/12/21', '00:00', 'Claro', 'Jaime', 'dcm', '000000', 'agendado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_gmuds`
--

CREATE TABLE `tbl_gmuds` (
  `gmud_titulo` varchar(255) NOT NULL,
  `gmud_executor` varchar(255) NOT NULL,
  `gmud_tipo` varchar(255) NOT NULL,
  `gmud_risco` varchar(255) NOT NULL,
  `gmud_inicio` varchar(255) NOT NULL,
  `gmud_fim` varchar(255) NOT NULL,
  `gmud_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_gmuds`
--

INSERT INTO `tbl_gmuds` (`gmud_titulo`, `gmud_executor`, `gmud_tipo`, `gmud_risco`, `gmud_inicio`, `gmud_fim`, `gmud_id`) VALUES
('Datasul - Programa apl734za.r', 'Marcos Vinicios de Carvalho – Viracopos', 'Emergencial', 'Baixa\r\n', '13/10/2020 09:30', '13/10/2020 10:00', '﻿10415'),
('Fluig - Alteração da versão do proxy reverso de 32 para 64 bits', 'Marcos Vinicios de Carvalho – Viracopos', 'Emergencial', 'Baixa\r\n', '15/10/2020 00:00', '15/10/2020 01:00', '10426'),
('Fluig - Reiniciar jboss (Travado) e proxy (Iniciar com conta de serviço)', 'Marcos Vinicios de Carvalho – Viracopos', 'Emergencial', 'Baixa\r\n', '15/10/2020 12:15', '15/10/2020 13:00', '10428'),
('Chamado Trust #50715 - Lentidão na integração CTMS', 'Alex Taylor Santos – Viracopos', 'Programada', 'Média\r\n', '18/10/2020 01:00', '18/10/2020 04:00', '10425'),
('Inclusão das tabelas H2CTMSORDERD e H2CTMSORDEM na rotina de limpeza.', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Média\r\n', '18/10/2020 01:00', '18/10/2020 04:00', '10423'),
('Correção da data e hora de recebimento i100/iv10', 'Alex Taylor Santos – Viracopos', 'Programada', 'Baixa\r\n', '19/10/2020 10:00', '19/10/2020 10:30', '10419'),
('CORREÇÃO DA DUPLICIDADE DO MASTER 02369320952', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Baixa\r\n', '19/10/2020 10:00', '19/10/2020 10:30', '10420'),
('AJUSTE DO SALDO DOCUMENTAL DO CONHECIMENTO DE TRANSPORTE', 'Alex Taylor Santos – Viracopos', 'Programada', 'Baixa\r\n', '19/10/2020 10:30', '19/10/2020 11:00', '10421'),
('Carga AWB 02023695033 DI 2013859235 com três Termos, só migrou dois para o CTMS para tarifar', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Baixa\r\n', '19/10/2020 10:30', '19/10/2020 11:00', '10422'),
('Reinstalação Progress para atendimento e adequação a auditoria Progress', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Baixa\r\n', '19/10/2020 18:00', '19/10/2020 22:00', '10431'),
('Troca de Serial Number AP tp1_pbp2_te103_ap018', 'João Paulo Lobo Lima – Arion', 'Programada', 'Baixa\r\n', '19/10/2020 20:00', '19/10/2020 21:00', '10418'),
('Fluig - Melhoria - Unificação das etapas triagem e tarifação', 'Alexson Ferreira - TNU', 'Programada', 'Média\r\n', '21/10/2020 00:00', '21/10/2020 04:00', '10429'),
('Datasul - Reinstalação do progress para adequação e atendimento a auditoria', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Baixa\r\n', '20/10/2020 18:00', '20/10/2020 22:00', '10432'),
('Datasul - Reinstalação do progress para adequação e atendimento a auditoria', 'Gabriel Luis de Moura – Viracopos', 'Programada', 'Baixa\r\n', '21/10/2020 18:00', '21/10/2020 22:00', '10433'),
('Implementar Ferramenta Commex Content - Captura de Moedas', 'Alex Taylor Santos – Viracopos', 'Programada', 'Média\r\n', '22/10/2020 08:00', '22/10/2020 17:00', '10427');

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `idade` varchar(255) NOT NULL,
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_acompanhamentos`
--
ALTER TABLE `tbl_acompanhamentos`
  ADD PRIMARY KEY (`acomp_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_acompanhamentos`
--
ALTER TABLE `tbl_acompanhamentos`
  MODIFY `acomp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
