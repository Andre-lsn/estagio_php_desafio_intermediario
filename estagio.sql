-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16/10/2019 às 22:40
-- Versão do servidor: 10.1.37-MariaDB-0+deb9u1
-- Versão do PHP: 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estagio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `deputados`
--

CREATE TABLE `deputados` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `partido` varchar(50) NOT NULL,
  `localizacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `deputados`
--

INSERT INTO `deputados` (`id`, `nome`, `partido`, `localizacao`) VALUES
(1832, 'Sávio Souza Cruz', 'MDB', 707),
(2267, 'Celise Laviola', 'MDB', 1671),
(2698, 'Virgílio Guimarães', 'PT', 3923),
(4458, 'Marquinho Lemos', 'PT', 3915),
(5905, 'Hely Tarqüínio', 'PV', 685),
(7327, 'Antonio Carlos Arantes', 'PSDB', 649),
(7752, 'Alencar da Silveira Jr.', 'PDT', 645),
(7758, 'Carlos Pimenta', 'PDT', 657),
(7762, 'Gil Pereira', 'PP', 680),
(7766, 'João Leite', 'PSDB', 690),
(7769, 'Leonídio Bouças', 'MDB', 1457),
(8095, 'Ione Pinheiro', 'DEM', 1679),
(9652, 'Arlen Santiago', 'PTB', 652),
(9655, 'Dalmo Ribeiro Silva', 'PSDB', 661),
(9673, 'Sargento Rodrigues', 'PTB', 706),
(10002, 'Carlos Henrique', 'REPUBLICANOS', 991),
(10434, 'Leandro Genaro', 'PSD', 1683),
(12195, 'André Quintão', 'PT', 648),
(12202, 'Gustavo Valadares', 'PSDB', 684),
(12210, 'Luiz Humberto Carneiro', 'PSDB', 695),
(12213, 'Marília Campos', 'PT', 1685),
(13425, 'Betinho Pinto Coelho', 'SOLIDARIEDADE', 3900),
(15245, 'Agostinho Patrus', 'PV', 643),
(15246, 'Braulio Braz', 'PTB', 653),
(15260, 'Rosângela Reis', 'PODE', 704),
(15265, 'Inácio Franco', 'PV', 686),
(16019, 'Léo Portela', 'PL', 1684),
(17872, 'Professor Wendel Mesquita', 'SOLIDARIEDADE', 3920),
(17919, 'Duarte Bechir', 'PSD', 673),
(18848, 'Cássio Soares', 'PSD', 992),
(18849, 'Celinho Sintrocel', 'PCdoB', 981),
(18850, 'Doutor Wilson Batista', 'PSD', 982),
(18852, 'Elismar Prado', 'PROS', 994),
(18857, 'Bosco', 'AVANTE', 989),
(18858, 'João Vítor Xavier', 'CIDADANIA', 1000),
(18860, 'Tadeu Martins Leite', 'MDB', 1010),
(18863, 'Neilando Pimenta', 'PODE', 1005),
(18867, 'Ulysses Gomes', 'PT', 1011),
(19150, 'Ana Paula Siqueira', 'REDE', 3895),
(20231, 'Glaycon Franco', 'PV', 1297),
(21125, 'Mário Henrique Caixa', 'PV', 1458),
(22515, 'Thiago Cota', 'MDB', 1691),
(22516, 'Fábio Avelar de Oliveira', 'AVANTE', 1677),
(22521, 'Noraldino Júnior', 'PSC', 1687),
(22523, 'Cristiano Silveira', 'PT', 1672),
(22531, 'Douglas Melo', 'MDB', 1674),
(22561, 'João Magalhães', 'MDB', 1682),
(22581, 'Doutor Jean Freire', 'PT', 1675),
(22607, 'Roberto Andrade', 'PSB', 1690),
(22616, 'Tito Torres', 'PSDB', 1692),
(24621, 'Gustavo Santana', 'PL', 1875),
(26062, 'Charles Santos', 'REPUBLICANOS', 3902),
(26098, 'Beatriz Cerqueira', 'PT', 3898),
(26101, 'Cleitinho Azevedo', 'CIDADANIA', 3903),
(26105, 'Zé Guilherme', 'PRP', 3924),
(26111, 'Mauro Tramonte', 'REPUBLICANOS', 3916),
(26114, 'Raul Belém', 'PSC', 3922),
(26119, 'Professor Cleiton', 'PSB', 3918),
(26133, 'Fernando Pacheco', 'PHS', 3910),
(26134, 'Guilherme da Cunha', 'NOVO', 3911),
(26135, 'Gustavo Mitre', 'PSC', 3912),
(26136, 'Osvaldo Lopes', 'PSD', 3917),
(26137, 'Professor Irineu', 'PSL', 3919),
(26138, 'Repórter Rafael Martins', 'PSD', 3921),
(26139, 'Zé Reis', 'PSD', 3925),
(26143, 'Andréia de Jesus', 'PSOL', 3896),
(26144, 'Bartô', 'NOVO', 3897),
(26145, 'Betão', 'PT', 3899),
(26148, 'Bruno Engler', 'PSL', 3901),
(26149, 'Coronel Henrique', 'PSL', 3904),
(26150, 'Delegado Heli Grilo', 'PSL', 3907),
(26151, 'Doorgal Andrada', 'PATRI', 3908),
(26152, 'Doutor Paulo', 'PATRI', 3909),
(26153, 'Leninha', 'PT', 3914),
(26163, 'Coronel Sandro', 'PSL', 3905),
(26164, 'Delegada Sheila', 'PSL', 3906),
(26165, 'Laura Serrano', 'NOVO', 3913);

-- --------------------------------------------------------

--
-- Estrutura para tabela `despesas`
--

CREATE TABLE `despesas` (
  `id` int(11) NOT NULL,
  `idDep` int(11) NOT NULL,
  `dataReferencia` date NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `codTipoDespesa` int(11) NOT NULL,
  `descTipoDespesa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `despesas`
--

INSERT INTO `despesas` (`id`, `idDep`, `dataReferencia`, `valor`, `codTipoDespesa`, `descTipoDespesa`) VALUES
(1, 4458, '2019-04-01', '122.78', 32, 'Combustível e lubrificante'),
(2, 4458, '2019-04-01', '7500.00', 34, 'Locação e fretamento de veículos'),
(3, 4458, '2019-04-01', '156.03', 32, 'Combustível e lubrificante'),
(4, 4458, '2019-04-01', '173.35', 32, 'Combustível e lubrificante'),
(5, 4458, '2019-04-01', '128.38', 32, 'Combustível e lubrificante'),
(6, 4458, '2019-04-01', '136.04', 32, 'Combustível e lubrificante'),
(7, 4458, '2019-04-01', '138.02', 32, 'Combustível e lubrificante'),
(8, 4458, '2019-04-01', '227.57', 32, 'Combustível e lubrificante'),
(9, 4458, '2019-04-01', '50.02', 32, 'Combustível e lubrificante'),
(10, 4458, '2019-04-01', '227.00', 32, 'Combustível e lubrificante'),
(11, 4458, '2019-04-01', '185.81', 32, 'Combustível e lubrificante'),
(12, 4458, '2019-04-01', '260.00', 38, 'Passagens, hospedagem e alimentação'),
(13, 4458, '2019-04-01', '242.30', 32, 'Combustível e lubrificante'),
(14, 4458, '2019-04-01', '97.18', 32, 'Combustível e lubrificante'),
(15, 4458, '2019-04-01', '40.00', 32, 'Combustível e lubrificante'),
(16, 4458, '2019-04-01', '140.15', 32, 'Combustível e lubrificante'),
(17, 4458, '2019-04-01', '260.00', 38, 'Passagens, hospedagem e alimentação'),
(18, 4458, '2019-04-01', '270.04', 32, 'Combustível e lubrificante'),
(19, 4458, '2019-04-01', '179.32', 32, 'Combustível e lubrificante'),
(20, 4458, '2019-04-01', '100.00', 32, 'Combustível e lubrificante'),
(21, 4458, '2019-04-01', '800.00', 35, 'Serviços de consultoria, assessoria e pesquisa'),
(22, 4458, '2019-04-01', '715.19', 37, 'Material de expediente e informática e locação de móveis e equipamentos para escritório'),
(23, 4458, '2019-04-01', '178.00', 32, 'Combustível e lubrificante'),
(24, 4458, '2019-04-01', '176.01', 32, 'Combustível e lubrificante'),
(25, 4458, '2019-04-01', '185.71', 32, 'Combustível e lubrificante'),
(26, 4458, '2019-04-01', '220.03', 32, 'Combustível e lubrificante'),
(27, 4458, '2019-04-01', '153.58', 32, 'Combustível e lubrificante'),
(28, 4458, '2019-04-01', '147.11', 32, 'Combustível e lubrificante'),
(29, 4458, '2019-04-01', '189.52', 38, 'Passagens, hospedagem e alimentação'),
(30, 4458, '2019-04-01', '2500.00', 35, 'Serviços de consultoria, assessoria e pesquisa'),
(31, 4458, '2019-04-01', '2980.00', 34, 'Locação e fretamento de veículos'),
(32, 4458, '2019-04-01', '7800.00', 36, 'Divulgação da atividade parlamentar'),
(33, 4458, '2019-04-01', '130.00', 38, 'Passagens, hospedagem e alimentação'),
(34, 4458, '2019-04-01', '130.00', 38, 'Passagens, hospedagem e alimentação'),
(35, 1832, '2019-03-01', '7000.00', 34, 'Locação e fretamento de veículos'),
(36, 1832, '2019-03-01', '130.00', 32, 'Combustível e lubrificante'),
(37, 1832, '2019-03-01', '189.99', 32, 'Combustível e lubrificante'),
(38, 1832, '2019-03-01', '115.03', 32, 'Combustível e lubrificante'),
(39, 1832, '2019-03-01', '226.09', 32, 'Combustível e lubrificante'),
(40, 1832, '2019-03-01', '78.04', 32, 'Combustível e lubrificante'),
(41, 1832, '2019-03-01', '1000.00', 31, 'Locação de imóvel e despesas a ele concernentes'),
(42, 1832, '2019-03-01', '60.00', 32, 'Combustível e lubrificante'),
(43, 1832, '2019-03-01', '575.53', 31, 'Locação de imóvel e despesas a ele concernentes'),
(44, 1832, '2019-03-01', '100.00', 32, 'Combustível e lubrificante'),
(45, 1832, '2019-03-01', '90.00', 32, 'Combustível e lubrificante'),
(46, 2267, '2019-03-01', '70.00', 32, 'Combustível e lubrificante'),
(47, 2267, '2019-03-01', '222.14', 32, 'Combustível e lubrificante'),
(48, 2267, '2019-03-01', '120.00', 32, 'Combustível e lubrificante'),
(49, 2267, '2019-03-01', '140.90', 32, 'Combustível e lubrificante'),
(50, 2267, '2019-03-01', '197.86', 32, 'Combustível e lubrificante'),
(51, 2267, '2019-03-01', '218.94', 32, 'Combustível e lubrificante'),
(52, 7327, '2019-03-01', '239.14', 32, 'Combustível e lubrificante'),
(53, 7327, '2019-03-01', '120.46', 32, 'Combustível e lubrificante'),
(54, 7327, '2019-03-01', '44.03', 31, 'Locação de imóvel e despesas a ele concernentes'),
(55, 7327, '2019-03-01', '140.21', 32, 'Combustível e lubrificante'),
(56, 7327, '2019-03-01', '34.50', 38, 'Passagens, hospedagem e alimentação'),
(57, 7327, '2019-03-01', '50.00', 32, 'Combustível e lubrificante'),
(58, 7327, '2019-03-01', '202.22', 32, 'Combustível e lubrificante'),
(59, 7327, '2019-03-01', '70.00', 32, 'Combustível e lubrificante'),
(60, 9652, '2019-03-01', '152.90', 32, 'Combustível e lubrificante'),
(61, 9652, '2019-03-01', '175.73', 38, 'Passagens, hospedagem e alimentação'),
(62, 9652, '2019-03-01', '845.00', 33, 'Manutenção e despesas gerais com veículos'),
(63, 9652, '2019-03-01', '111.94', 32, 'Combustível e lubrificante'),
(64, 9652, '2019-03-01', '50.04', 32, 'Combustível e lubrificante'),
(65, 9652, '2019-03-01', '8275.00', 34, 'Locação e fretamento de veículos'),
(66, 9652, '2019-03-01', '50.02', 32, 'Combustível e lubrificante'),
(67, 9652, '2019-03-01', '336.09', 32, 'Combustível e lubrificante'),
(68, 26165, '2019-04-01', '11.06', 38, 'Passagens, hospedagem e alimentação'),
(69, 26165, '2019-04-01', '14.05', 38, 'Passagens, hospedagem e alimentação'),
(70, 26153, '2019-04-01', '90.00', 38, 'Passagens, hospedagem e alimentação'),
(71, 26153, '2019-04-01', '7.20', 38, 'Passagens, hospedagem e alimentação'),
(72, 26153, '2019-04-01', '41.40', 31, 'Locação de imóvel e despesas a ele concernentes'),
(73, 26153, '2019-04-01', '100.00', 32, 'Combustível e lubrificante'),
(74, 26153, '2019-04-01', '100.00', 32, 'Combustível e lubrificante'),
(75, 26153, '2019-04-01', '90.00', 38, 'Passagens, hospedagem e alimentação'),
(76, 26153, '2019-04-01', '5.30', 38, 'Passagens, hospedagem e alimentação'),
(77, 26153, '2019-04-01', '7.20', 38, 'Passagens, hospedagem e alimentação'),
(78, 26153, '2019-04-01', '7.20', 38, 'Passagens, hospedagem e alimentação');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `deputados`
--
ALTER TABLE `deputados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `despesas`
--
ALTER TABLE `despesas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_deputado` (`idDep`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `despesas`
--
ALTER TABLE `despesas`
  ADD CONSTRAINT `fk_id_deputado` FOREIGN KEY (`idDep`) REFERENCES `deputados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
