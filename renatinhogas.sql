-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Out-2019 às 23:29
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renatinhogas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Telefone` int(25) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Num_Casa` varchar(30) NOT NULL,
  `CEP` varchar(30) NOT NULL,
  `Complemento` varchar(30) NOT NULL,
  `Cidade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Telefone`, `Nome`, `Endereco`, `Bairro`, `Num_Casa`, `CEP`, `Complemento`, `Cidade`) VALUES
(1234, 'Caio Henrique ', 'Rua 3', 'Jd Ameira', '557', '13187164', 'Casa', 'HortolÃ¢ndia'),
(12344, 'Moacir', 'Rua 3', 'Carmin', '123', '123', 'Cs', 'Hoto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhes_venda`
--

CREATE TABLE `detalhes_venda` (
  `ID_detalhes` int(30) NOT NULL,
  `Id_Produto` int(40) NOT NULL,
  `Quantidade` int(40) NOT NULL,
  `Id_venda` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `Id_forma` int(10) NOT NULL,
  `Forma_Pagamento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`Id_forma`, `Forma_Pagamento`) VALUES
(3, 'Ã€ vista'),
(4, 'DÃ©bito'),
(5, 'CrÃ©dito');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `ID_Fornecedor` int(30) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CNPJ` varchar(30) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Numero_End` int(30) NOT NULL,
  `CEP` varchar(40) NOT NULL,
  `Referencia` varchar(400) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Telefone` varchar(30) NOT NULL,
  `UF` varchar(20) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`ID_Fornecedor`, `Nome`, `CNPJ`, `Endereco`, `Numero_End`, `CEP`, `Referencia`, `Bairro`, `Telefone`, `UF`, `Cidade`, `Email`) VALUES
(17, 'Caio', '1234567', 'Rua Magnus', 573, '13178942', 'Rua Da Lojas 100', 'Jd AmÃ©lina', '38959798', 'SP', 'Guarulhos', 'joycegas@gmail.com'),
(18, 'Romario LTDA', '12345', 'Rua das Palmeiras', 556, '12145167', 'Em frente O Segundo Dp', 'Santo AndrÃ©', '38877676', 'RJ', 'NiterÃ³i', 'Roman_gÃ¡s@outlook.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_pages`
--

CREATE TABLE `login_pages` (
  `Id_user` int(50) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `User_pass` varchar(150) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login_pages`
--

INSERT INTO `login_pages` (`Id_user`, `User_name`, `Email`, `User_pass`, `foto`) VALUES
(2, 'Adm-Caio', 'Cacaioben@gmail.com', '123', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca_produto`
--

CREATE TABLE `marca_produto` (
  `ID_Marca` int(20) NOT NULL,
  `Nome_Marca` varchar(40) NOT NULL,
  `Fornecedor` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marca_produto`
--

INSERT INTO `marca_produto` (`ID_Marca`, `Nome_Marca`, `Fornecedor`) VALUES
(4, 'UDBB', 17),
(5, 'UCDB', 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID_produto` int(10) NOT NULL,
  `Produto` varchar(50) NOT NULL,
  `Valor` decimal(30,0) NOT NULL,
  `Estoque` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Fornecedor` int(11) NOT NULL,
  `Marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`ID_produto`, `Produto`, `Valor`, `Estoque`, `Tipo`, `Fornecedor`, `Marca`) VALUES
(10, 'Agua', '500', 20, 5, 18, 5),
(11, 'GÃ¡s Natural', '45', 30, 2, 18, 5),
(12, 'GÃ¡s', '45', 2, 2, 18, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_entrega`
--

CREATE TABLE `tipo_entrega` (
  `ID_entrega` int(10) NOT NULL,
  `Descricao_entrega` varchar(30) NOT NULL,
  `taxa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_entrega`
--

INSERT INTO `tipo_entrega` (`ID_entrega`, `Descricao_entrega`, `taxa`) VALUES
(1, 'A RETIRAR', 0),
(2, 'ENTREGAR', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_produto`
--

CREATE TABLE `tipo_produto` (
  `Id_Tipo` int(30) NOT NULL,
  `Tipo_Produto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipo_produto`
--

INSERT INTO `tipo_produto` (`Id_Tipo`, `Tipo_Produto`) VALUES
(1, '7L'),
(2, '4KG'),
(5, '9L'),
(6, '10L');

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf`
--

CREATE TABLE `uf` (
  `Sigla_Uf` varchar(30) NOT NULL,
  `Descricao_Uf` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `uf`
--

INSERT INTO `uf` (`Sigla_Uf`, `Descricao_Uf`) VALUES
('AC', 'Acre'),
('AL', 'Alagoas'),
('AM', 'Amazonas'),
('AP', 'AmapÃ¡'),
('BA', 'Bahia'),
('CE', 'Ceara'),
('DF', 'Distrito Federal'),
('ES', 'EspÃ­rito Santo'),
('GO', 'GoiÃ¡s'),
('MA', 'MaranhÃ£o '),
('MG', 'Minas Gerais'),
('MS', 'Mato Grosso do Sul '),
('MT', 'Mato Grosso'),
('PA', 'ParÃ¡'),
('PB', 'ParaÃ­ba '),
('PI', 'PiauÃ­'),
('PR', 'ParanÃ¡ '),
('RJ', 'Rio de Janeiro'),
('RN', 'Rio Grande do Norte'),
('RO', 'RondÃ´nia'),
('RR', 'Roraima'),
('RS', 'Rio Grande do Sul '),
('SC', 'Santa Catarina'),
('SE', 'Sergipe '),
('SP', 'São Paulo'),
('TO', 'Tocantins ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `ID_venda` int(11) NOT NULL,
  `data_venda` varchar(40) NOT NULL,
  `cliente` int(10) NOT NULL,
  `data_emissao` varchar(40) NOT NULL,
  `Forma_Pagamento` int(10) NOT NULL,
  `Tipo_Entrega` int(10) NOT NULL,
  `Desconto` int(20) NOT NULL,
  `Total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Telefone`);

--
-- Indexes for table `detalhes_venda`
--
ALTER TABLE `detalhes_venda`
  ADD PRIMARY KEY (`ID_detalhes`),
  ADD KEY `Prod_id_fk` (`Id_Produto`) USING BTREE,
  ADD KEY `Vd_id_fk` (`Id_venda`) USING BTREE;

--
-- Indexes for table `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`Id_forma`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`ID_Fornecedor`),
  ADD KEY `uf_sigla_fk` (`UF`) USING BTREE;

--
-- Indexes for table `login_pages`
--
ALTER TABLE `login_pages`
  ADD PRIMARY KEY (`Id_user`);

--
-- Indexes for table `marca_produto`
--
ALTER TABLE `marca_produto`
  ADD PRIMARY KEY (`ID_Marca`),
  ADD KEY `fornecedor_id_fk` (`Fornecedor`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`ID_produto`),
  ADD KEY `marca_id_fk` (`Marca`),
  ADD KEY `tipo_produto_id_fk` (`Tipo`) USING BTREE,
  ADD KEY `forn_id_fk` (`Fornecedor`) USING BTREE;

--
-- Indexes for table `tipo_entrega`
--
ALTER TABLE `tipo_entrega`
  ADD PRIMARY KEY (`ID_entrega`);

--
-- Indexes for table `tipo_produto`
--
ALTER TABLE `tipo_produto`
  ADD PRIMARY KEY (`Id_Tipo`);

--
-- Indexes for table `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`Sigla_Uf`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`ID_venda`),
  ADD KEY `cliente_id_fk` (`cliente`),
  ADD KEY `forma_id_fk` (`Forma_Pagamento`),
  ADD KEY `tipo_id_fk` (`Tipo_Entrega`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detalhes_venda`
--
ALTER TABLE `detalhes_venda`
  MODIFY `ID_detalhes` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `Id_forma` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `ID_Fornecedor` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login_pages`
--
ALTER TABLE `login_pages`
  MODIFY `Id_user` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marca_produto`
--
ALTER TABLE `marca_produto`
  MODIFY `ID_Marca` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `ID_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tipo_entrega`
--
ALTER TABLE `tipo_entrega`
  MODIFY `ID_entrega` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_produto`
--
ALTER TABLE `tipo_produto`
  MODIFY `Id_Tipo` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `ID_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `detalhes_venda`
--
ALTER TABLE `detalhes_venda`
  ADD CONSTRAINT `Prod_id_fk` FOREIGN KEY (`Id_Produto`) REFERENCES `produto` (`ID_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Vd_id_fk` FOREIGN KEY (`Id_venda`) REFERENCES `venda` (`ID_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `uf_sigla_fk` FOREIGN KEY (`UF`) REFERENCES `uf` (`Sigla_Uf`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `marca_produto`
--
ALTER TABLE `marca_produto`
  ADD CONSTRAINT `fornecedor_id_fk` FOREIGN KEY (`Fornecedor`) REFERENCES `fornecedor` (`ID_Fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `forn_id_fk` FOREIGN KEY (`Fornecedor`) REFERENCES `fornecedor` (`ID_Fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `marca_id_fk` FOREIGN KEY (`Marca`) REFERENCES `marca_produto` (`ID_Marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tipo_produto_id_fk` FOREIGN KEY (`Tipo`) REFERENCES `tipo_produto` (`Id_Tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `cliente_id_fk` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`Telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `forma_id_fk` FOREIGN KEY (`Forma_Pagamento`) REFERENCES `forma_pagamento` (`Id_forma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tipo_id_fk` FOREIGN KEY (`Tipo_Entrega`) REFERENCES `tipo_entrega` (`ID_entrega`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
