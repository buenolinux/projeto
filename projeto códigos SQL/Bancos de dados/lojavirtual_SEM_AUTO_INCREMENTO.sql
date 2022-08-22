-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22-Ago-2022 às 03:16
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojavirtual_SEM_AUTO_INCREMENTO`
--
CREATE DATABASE IF NOT EXISTS `lojavirtual_SEM_AUTO_INCREMENTO` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojavirtual_SEM_AUTO_INCREMENTO`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_adms`
--

CREATE TABLE `tab_adms` (
  `id_adm` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `id_estoque` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_adms`
--

INSERT INTO `tab_adms` (`id_adm`, `id_funcionario`, `id_estoque`, `id_departamento`) VALUES
(1, 4, 1, 1),
(2, 3, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_animais`
--

CREATE TABLE `tab_animais` (
  `id_animal` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_animais`
--

INSERT INTO `tab_animais` (`id_animal`, `nome`) VALUES
(1, 'Cachorro'),
(2, 'Gato'),
(3, 'Peixe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cargos`
--

CREATE TABLE `tab_cargos` (
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_cargos`
--

INSERT INTO `tab_cargos` (`id_cargo`, `id_departamento`, `nome`) VALUES
(4, 3, 'Estoquista'),
(5, 1, 'Vendedor'),
(6, 2, 'Atendente'),
(7, 1, 'Supervisor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_categorias`
--

CREATE TABLE `tab_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_categorias`
--

INSERT INTO `tab_categorias` (`id_categoria`, `nome`) VALUES
(1, 'Alimentos'),
(2, 'Higiente'),
(3, 'Acessórios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_clientes`
--

CREATE TABLE `tab_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(13) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_clientes`
--

INSERT INTO `tab_clientes` (`id_cliente`, `nome`, `sobrenome`, `cpf`, `rg`, `nascimento`, `sexo`, `email`, `senha`, `cep`, `logradouro`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(1, 'José', 'dos Santos', '111-111-111-11', '11.111.111-11', '1990-08-20', 'm', 'josedossantos@email.com', '123', '03131-010', 'Rua Orfanato', '316', 'Vila Prudente', 'São Paulo', 'SP'),
(2, 'Manuel', 'Pereira', '222-222-222-11', '11.333.111-11', '1980-08-20', 'm', 'manualpereira@email.com', '123', '03131-010', 'Rua Orfanato', '316', 'Vila Prudente', 'São Paulo', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_departamentos`
--

CREATE TABLE `tab_departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_departamentos`
--

INSERT INTO `tab_departamentos` (`id_departamento`, `nome`) VALUES
(1, 'Vendas'),
(2, 'Suporte'),
(3, 'Estoquista');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_estoques`
--

CREATE TABLE `tab_estoques` (
  `id_estoque` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_estoques`
--

INSERT INTO `tab_estoques` (`id_estoque`, `id_lote`, `id_departamento`, `quantidade`) VALUES
(1, 1, 3, 3),
(2, 2, 3, 3),
(3, 3, 1, 1),
(4, 4, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_fornecedores`
--

CREATE TABLE `tab_fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_fornecedores`
--

INSERT INTO `tab_fornecedores` (`id_fornecedor`, `nome`, `telefone`) VALUES
(1, 'F Pedigree', '(11)91111-1111'),
(2, 'F Dog Chow', '(11)91111-2222'),
(3, 'FWhiskas', '(11)91111-3333'),
(4, 'F GranPlus', '(11)91111-4444'),
(5, 'F Dog Chow', '(11)91111-5555'),
(6, 'F Roya', '(11)91111-6666'),
(10, 'F Magnus', '(11)91111-4444'),
(11, 'F Premium Flakes Nutricon', '(11)95555-4444');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_funcionarios`
--

CREATE TABLE `tab_funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(60) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `nomeusuario` varchar(50) NOT NULL,
  `perfilusuario` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_funcionarios`
--

INSERT INTO `tab_funcionarios` (`id_funcionario`, `nome`, `sobrenome`, `senha`, `nomeusuario`, `perfilusuario`, `id_cargo`) VALUES
(3, 'João', 'Souza', '123', 'jo_ao', 1, 4),
(4, 'Pedro', 'Santos', '123', 'pe_dro', 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_itens_pedidos`
--

CREATE TABLE `tab_itens_pedidos` (
  `id_item_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_itens_pedidos`
--

INSERT INTO `tab_itens_pedidos` (`id_item_pedido`, `id_produto`, `quantidade`) VALUES
(1, 1, 1),
(1, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_lotes`
--

CREATE TABLE `tab_lotes` (
  `id_lote` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `entrada` date NOT NULL,
  `vencimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_lotes`
--

INSERT INTO `tab_lotes` (`id_lote`, `id_pedido`, `entrada`, `vencimento`) VALUES
(1, 1, '2022-08-20', '2023-08-20'),
(2, 1, '2022-08-20', '2023-09-20'),
(3, 3, '2022-08-20', '2022-10-20'),
(4, 2, '2022-08-01', '2022-10-20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_marcas`
--

CREATE TABLE `tab_marcas` (
  `id_marca` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_marcas`
--

INSERT INTO `tab_marcas` (`id_marca`, `nome`) VALUES
(1, 'Magnus'),
(2, 'NUTRAL'),
(3, 'Whiskas'),
(4, 'Premium Flakes Nutricon');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_pedidos`
--

CREATE TABLE `tab_pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_pedidos`
--

INSERT INTO `tab_pedidos` (`id_pedido`, `id_fornecedor`) VALUES
(2, 3),
(1, 10),
(3, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_produtos`
--

CREATE TABLE `tab_produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` int(11) NOT NULL,
  `unidademedida` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_produtos`
--

INSERT INTO `tab_produtos` (`id_produto`, `nome`, `preco`, `imagem`, `descricao`, `tamanho`, `unidademedida`, `id_categoria`, `id_animal`, `id_marca`, `id_lote`) VALUES
(1, 'Magnus todo dia', '121.90', 'imagem.jpg', 'A ração Magnus Todo Dia de 15 kg e 25 kg é de qualidade premium e tem sabor especial de carne. Além disso, a comidinha não contém adição de corantes e possui um complexo de ingredientes que promovem mais saúde e bem-estar aos cães.\r\nPorte da Raça: Peso do Cão (kg)\r\nGigante: Acima de 40\r\nGrande: 25 - 40', 0, 15, 1, 1, 1, 1),
(2, 'Whiskas sache', '2.99', 'imagem.jpg', ' Feito com ingredientes naturais de alta qualidade, vitaminas e minerais; - Sem conservantes, sem corantes artificiais e sem aromatizantes artificiais. A Ração Úmida Whiskas Sachê Carne ao Molho para Gatos Adultos Castrados oferece pedaços médio de peixe ao molho, mega delicioso ao paladar do seu gatinho.', 0, 85, 1, 2, 3, 4),
(3, 'Ração Premium Flakes Nutricon', '20.99', 'Ração Premium Flakes Nutricon.jpg', ' Premium Flakes é um alimento completo, em flocos, indicado para todas as espécies de peixes ornamentais tropicais em fase de crescimento ou manutenção. Ideal para aquários comunitários. Formulado à base de ingredientes de alta qualidade e digestibilidade.', 0, 50, 1, 3, 4, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_vendas`
--

CREATE TABLE `tab_vendas` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_item_pedido` int(11) NOT NULL,
  `data` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_vendas`
--

INSERT INTO `tab_vendas` (`id_venda`, `id_cliente`, `id_item_pedido`, `data`, `total`) VALUES
(1, 1, 1, '2022-08-21', '121.90'),
(2, 1, 1, '2022-08-21', '41.98');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_adms`
--
ALTER TABLE `tab_adms`
  ADD PRIMARY KEY (`id_adm`),
  ADD KEY `fk_id_funcionario` (`id_funcionario`),
  ADD KEY `fk_id_estoque` (`id_estoque`),
  ADD KEY `fk3_id_departamento` (`id_departamento`);

--
-- Índices para tabela `tab_animais`
--
ALTER TABLE `tab_animais`
  ADD PRIMARY KEY (`id_animal`);

--
-- Índices para tabela `tab_cargos`
--
ALTER TABLE `tab_cargos`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `fk2_id_departamento` (`id_departamento`);

--
-- Índices para tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `tab_clientes`
--
ALTER TABLE `tab_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `tab_departamentos`
--
ALTER TABLE `tab_departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Índices para tabela `tab_estoques`
--
ALTER TABLE `tab_estoques`
  ADD PRIMARY KEY (`id_estoque`),
  ADD KEY `fk_id_lote` (`id_lote`),
  ADD KEY `fk_id_departamento` (`id_departamento`);

--
-- Índices para tabela `tab_fornecedores`
--
ALTER TABLE `tab_fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices para tabela `tab_funcionarios`
--
ALTER TABLE `tab_funcionarios`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Índices para tabela `tab_itens_pedidos`
--
ALTER TABLE `tab_itens_pedidos`
  ADD KEY `id_item_pedido` (`id_item_pedido`),
  ADD KEY `fk_id_produto` (`id_produto`);

--
-- Índices para tabela `tab_lotes`
--
ALTER TABLE `tab_lotes`
  ADD PRIMARY KEY (`id_lote`),
  ADD KEY `fk_id_pedido` (`id_pedido`);

--
-- Índices para tabela `tab_marcas`
--
ALTER TABLE `tab_marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `tab_pedidos`
--
ALTER TABLE `tab_pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `fk_id_fornecedor` (`id_fornecedor`);

--
-- Índices para tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_id_categoria` (`id_categoria`),
  ADD KEY `fk_id_animal` (`id_animal`),
  ADD KEY `fk2_id_marca` (`id_marca`),
  ADD KEY `fk2_id_lote` (`id_lote`);

--
-- Índices para tabela `tab_vendas`
--
ALTER TABLE `tab_vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_id_item_pedido` (`id_item_pedido`),
  ADD KEY `fk_id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_adms`
--
ALTER TABLE `tab_adms`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_animais`
--
ALTER TABLE `tab_animais`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_cargos`
--
ALTER TABLE `tab_cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_clientes`
--
ALTER TABLE `tab_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_departamentos`
--
ALTER TABLE `tab_departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_estoques`
--
ALTER TABLE `tab_estoques`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tab_fornecedores`
--
ALTER TABLE `tab_fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tab_funcionarios`
--
ALTER TABLE `tab_funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tab_lotes`
--
ALTER TABLE `tab_lotes`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tab_marcas`
--
ALTER TABLE `tab_marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tab_pedidos`
--
ALTER TABLE `tab_pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_vendas`
--
ALTER TABLE `tab_vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tab_adms`
--
ALTER TABLE `tab_adms`
  ADD CONSTRAINT `fk3_id_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tab_departamentos` (`id_departamento`),
  ADD CONSTRAINT `fk_id_estoque` FOREIGN KEY (`id_estoque`) REFERENCES `tab_estoques` (`id_estoque`),
  ADD CONSTRAINT `fk_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `tab_funcionarios` (`id_funcionario`);

--
-- Limitadores para a tabela `tab_cargos`
--
ALTER TABLE `tab_cargos`
  ADD CONSTRAINT `fk2_id_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tab_departamentos` (`id_departamento`);

--
-- Limitadores para a tabela `tab_estoques`
--
ALTER TABLE `tab_estoques`
  ADD CONSTRAINT `fk_id_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tab_departamentos` (`id_departamento`),
  ADD CONSTRAINT `fk_id_lote` FOREIGN KEY (`id_lote`) REFERENCES `tab_lotes` (`id_lote`);

--
-- Limitadores para a tabela `tab_funcionarios`
--
ALTER TABLE `tab_funcionarios`
  ADD CONSTRAINT `id_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tab_cargos` (`id_cargo`);

--
-- Limitadores para a tabela `tab_itens_pedidos`
--
ALTER TABLE `tab_itens_pedidos`
  ADD CONSTRAINT `fk_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tab_produtos` (`id_produto`);

--
-- Limitadores para a tabela `tab_lotes`
--
ALTER TABLE `tab_lotes`
  ADD CONSTRAINT `fk_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `tab_pedidos` (`id_pedido`);

--
-- Limitadores para a tabela `tab_pedidos`
--
ALTER TABLE `tab_pedidos`
  ADD CONSTRAINT `fk_id_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `tab_fornecedores` (`id_fornecedor`);

--
-- Limitadores para a tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  ADD CONSTRAINT `fk2_id_lote` FOREIGN KEY (`id_lote`) REFERENCES `tab_lotes` (`id_lote`),
  ADD CONSTRAINT `fk2_id_marca` FOREIGN KEY (`id_marca`) REFERENCES `tab_marcas` (`id_marca`),
  ADD CONSTRAINT `fk_id_animal` FOREIGN KEY (`id_animal`) REFERENCES `tab_animais` (`id_animal`),
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tab_categorias` (`id_categoria`);

--
-- Limitadores para a tabela `tab_vendas`
--
ALTER TABLE `tab_vendas`
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tab_clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_id_item_pedido` FOREIGN KEY (`id_item_pedido`) REFERENCES `tab_itens_pedidos` (`id_item_pedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
