-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Fev-2022 às 11:20
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `melhor_amigo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_cao`
--

CREATE TABLE `t_cao` (
  `id_cao` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idade` int(2) DEFAULT NULL,
  `porte` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_disponivel` bit(1) DEFAULT b'1',
  `src_imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_cao`
--

INSERT INTO `t_cao` (`id_cao`, `nome`, `genero`, `idade`, `porte`, `status_disponivel`, `src_imagem`) VALUES
(1, 'Reitor', 'Macho', 3, 'médio', b'1', 'img/caes/cao_1.jpg'),
(2, 'Biriba', 'Macho', 4, 'pequeno', b'1', 'img/caes/cao_2.jpg'),
(3, 'Puma', 'Macho', 6, 'grande', b'1', 'img/caes/cao_3.jpg'),
(4, 'Tereza', 'Fêmea', 4, 'pequeno', b'1', 'img/caes/cao_4.jpg'),
(5, 'Palito', 'Macho', 3, 'médio', b'1', 'img/caes/cao_5.jpg'),
(6, 'Luna', 'Fêmea', 4, 'grande', b'1', 'img/caes/cao_6.jpg'),
(7, 'Sargento', 'Macho', 10, 'médio', b'1', 'img/caes/cao_7.jpg'),
(8, 'Atena', 'Fêmea', 7, 'grande', b'1', 'img/caes/cao_8.jpg'),
(9, 'Dourado', 'Macho', 8, 'grande', b'1', 'img/caes/cao_9.jpg'),
(10, 'Jarbas', 'Macho', 4, 'pequeno', b'1', 'img/caes/cao_10.jpg'),
(11, 'Joelma', 'Fêmea', 2, 'grande', b'1', 'img/caes/cao_11.jpg'),
(12, 'Fumaça', 'Macho', 10, 'médio', b'1', 'img/caes/cao_12.jpg'),
(13, 'Snoop', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_13.jpg'),
(14, 'Zizi', 'Fêmea', 1, 'médio', b'1', 'img/caes/cao_14.jpg'),
(15, 'Maomé', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_15.jpg'),
(16, 'Zeca', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_16.jpg'),
(17, 'Sansão', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_17.jpg'),
(18, 'Brigite', 'Fêmea', 3, 'pequeno', b'1', 'img/caes/cao_18.jpg'),
(19, 'Paola', 'Fêmea', 3, 'pequeno', b'1', 'img/caes/cao_19.jpg'),
(20, 'Santo', 'Macho', 3, 'grande', b'1', 'img/caes/cao_20.jpg'),
(21, 'Bruce', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_21.jpg'),
(22, 'Jeremias', 'Macho', 3, 'pequeno', b'1', 'img/caes/cao_22.jpg'),
(23, 'Vilma', 'Fêmea', 3, 'pequeno', b'1', 'img/caes/cao_23.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_endereco`
--

CREATE TABLE `t_endereco` (
  `id_usuario` int(11) NOT NULL,
  `cep` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rua` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ncasa` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complemento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_endereco`
--

INSERT INTO `t_endereco` (`id_usuario`, `cep`, `rua`, `ncasa`, `bairro`, `complemento`, `cidade`, `estado`) VALUES
(1, '98765-432', 'Rua do Adotante', '2016.1', 'IFAL', 'Bloco de Informática', 'Maceió', 'Alagoas'),
(2, '12345-678', 'Rua do Padrinho', '2016.1', 'IFAL', 'Bloco de Informática', 'Maceió', 'Alagoas'),
(3, '87654-321', 'Rua do Voluntário', '2016.1', 'IFAL', 'Bloco de Informática', 'Maceió', 'Alagoas'),
(4, '23456-789', 'Rua do Administrador', '2016.1', 'IFAL', 'Bloco de Informática', 'Maceió', 'Alagoas'),
(5, '19283-746', 'Rua do José', '3000', 'Centro', 'Conjunto Parque do José', 'Arapiraca', 'Alagoas'),
(6, '91827-364', 'Rua da Maria', '450', 'Centro', 'Conjunto Morada da Maria', 'Recife', 'Pernambuco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_padrinho`
--

CREATE TABLE `t_padrinho` (
  `id_padrinho` int(11) NOT NULL,
  `id_cao` int(11) DEFAULT NULL,
  `valor_mensal` decimal(10,2) DEFAULT NULL,
  `dia_vencimento` int(2) DEFAULT NULL,
  `modo_boleto` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_apadrinhamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_padrinho`
--

INSERT INTO `t_padrinho` (`id_padrinho`, `id_cao`, `valor_mensal`, `dia_vencimento`, `modo_boleto`, `data_apadrinhamento`) VALUES
(2, 13, '50.00', 10, 'Email', '2015-11-22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_solicit_adocao`
--

CREATE TABLE `t_solicit_adocao` (
  `cod_solicit` int(11) NOT NULL,
  `id_adotante` int(11) NOT NULL,
  `id_cao` int(11) NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_aprovacao` int(11) NOT NULL DEFAULT 0 COMMENT 'Pendente/Recusado/Aprovado',
  `data_solicit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_solicit_adocao`
--

INSERT INTO `t_solicit_adocao` (`cod_solicit`, `id_adotante`, `id_cao`, `mensagem`, `status_aprovacao`, `data_solicit`) VALUES
(1, 1, 16, 'Quero um amigo, conheço muitas pessoas que têm cachorro e vejo como são felizes!', 0, '2016-05-20'),
(2, 6, 11, 'Depois que meu esposo faleceu, minha casa anda muito vazia e triste, sei que um amigo novo irá alegrar tudo!', 0, '2016-06-10'),
(3, 5, 10, 'Cachorros são minha grande paixão! Tenho 2 em casa e quero mais 1 para fazer companhia!', 0, '2016-06-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_solicit_voluntario`
--

CREATE TABLE `t_solicit_voluntario` (
  `cod_solicit` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `resposta_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resposta_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resposta_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resposta_4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_aprovacao` int(11) NOT NULL DEFAULT 0 COMMENT 'Pendente/Recusado/Aprovado',
  `data_solicit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_solicit_voluntario`
--

INSERT INTO `t_solicit_voluntario` (`cod_solicit`, `id_usuario`, `resposta_1`, `resposta_2`, `resposta_3`, `resposta_4`, `status_aprovacao`, `data_solicit`) VALUES
(1, 6, 'Porque quero contribuir para o bem estar de nosso animais!', 'Fins de semana, com horário variável.', 'Contadora', 'Já tive! Na minha juventude. Era um vira-lata, chamava-se Laike.', 0, '2016-06-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_usuario`
--

CREATE TABLE `t_usuario` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idade` int(3) DEFAULT NULL,
  `telefone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_usuario` int(1) DEFAULT 0 COMMENT 'Adotante/Padrinho/Voluntário/Admin',
  `status_ban` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_usuario`
--

INSERT INTO `t_usuario` (`id_usuario`, `email`, `senha`, `nome`, `cpf`, `idade`, `telefone`, `nivel_usuario`, `status_ban`) VALUES
(1, 'adotante@fpin.com', '1234qwer', 'Comum/Adotante', '886.006.696-42', 18, '82999998888', 0, b'0'),
(2, 'padrinho@fpin.com', '1234qwer', 'Padrinho', '107.716.291-09', 19, '82988889999', 1, b'0'),
(3, 'voluntario@fpin.com', '1234qwer', 'Voluntário', '416.323.933-28', 20, '82999998888', 2, b'0'),
(4, 'admin@fpin.com', '1234qwer', 'Administrador Master', '284.389.873-03', 21, '82988889999', 4, b'0'),
(5, 'jose@fpin.com', '1234qwer', 'José do Santos Silva', '284.336.238-50', 30, '82912349999', 0, b'0'),
(6, 'maria@fpin.com', '1234qwer', 'Maria Medeiros da Costa', '313.637.221-23', 45, '8294558766', 0, b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_voluntario`
--

CREATE TABLE `t_voluntario` (
  `id_voluntario` int(11) NOT NULL,
  `data_admissao` date DEFAULT NULL,
  `horario_disp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `agenda` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_voluntario`
--

INSERT INTO `t_voluntario` (`id_voluntario`, `data_admissao`, `horario_disp`, `agenda`) VALUES
(3, '2016-06-01', 'Segunda à Sexta: Disponível até as 11h\nSábado: Disponível a partir de 12h\nDomingo: Disponível o dia todo', '- Falar com o veterinário, sobre o Jeremias\n- Dar banhos nos cães (Sábado pela manhã)\n- Arrumar os lugares onde os filhotes ficam\n- Confirmar com diretor, sobre a proxima feira de adoção');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `t_cao`
--
ALTER TABLE `t_cao`
  ADD PRIMARY KEY (`id_cao`);

--
-- Índices para tabela `t_endereco`
--
ALTER TABLE `t_endereco`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `t_padrinho`
--
ALTER TABLE `t_padrinho`
  ADD PRIMARY KEY (`id_padrinho`),
  ADD KEY `fk_t_padrinho_t_cao_1` (`id_cao`);

--
-- Índices para tabela `t_solicit_adocao`
--
ALTER TABLE `t_solicit_adocao`
  ADD PRIMARY KEY (`cod_solicit`),
  ADD KEY `fk_t_solicit_adocao_t_usuario_1` (`id_adotante`),
  ADD KEY `fk_t_solicit_adocao_t_cao_1` (`id_cao`);

--
-- Índices para tabela `t_solicit_voluntario`
--
ALTER TABLE `t_solicit_voluntario`
  ADD PRIMARY KEY (`cod_solicit`),
  ADD KEY `fk_t_solicit_voluntario_t_usuario_1` (`id_usuario`);

--
-- Índices para tabela `t_usuario`
--
ALTER TABLE `t_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `t_voluntario`
--
ALTER TABLE `t_voluntario`
  ADD PRIMARY KEY (`id_voluntario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `t_cao`
--
ALTER TABLE `t_cao`
  MODIFY `id_cao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `t_solicit_adocao`
--
ALTER TABLE `t_solicit_adocao`
  MODIFY `cod_solicit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `t_solicit_voluntario`
--
ALTER TABLE `t_solicit_voluntario`
  MODIFY `cod_solicit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `t_usuario`
--
ALTER TABLE `t_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `t_endereco`
--
ALTER TABLE `t_endereco`
  ADD CONSTRAINT `fk_t_endereço_t_usuario_1` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `t_padrinho`
--
ALTER TABLE `t_padrinho`
  ADD CONSTRAINT `fk_t_padrinho_t_cao_1` FOREIGN KEY (`id_cao`) REFERENCES `t_cao` (`id_cao`),
  ADD CONSTRAINT `fk_t_padrinho_t_usuario_1` FOREIGN KEY (`id_padrinho`) REFERENCES `t_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `t_solicit_adocao`
--
ALTER TABLE `t_solicit_adocao`
  ADD CONSTRAINT `fk_t_solicit_adocao_t_cao_1` FOREIGN KEY (`id_cao`) REFERENCES `t_cao` (`id_cao`),
  ADD CONSTRAINT `fk_t_solicit_adocao_t_usuario_1` FOREIGN KEY (`id_adotante`) REFERENCES `t_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `t_solicit_voluntario`
--
ALTER TABLE `t_solicit_voluntario`
  ADD CONSTRAINT `fk_t_solicit_voluntario_t_usuario_1` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `t_voluntario`
--
ALTER TABLE `t_voluntario`
  ADD CONSTRAINT `fk_t_voluntario_t_usuario_1` FOREIGN KEY (`id_voluntario`) REFERENCES `t_usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
