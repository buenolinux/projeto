-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2022 às 22:26
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojavirtual2`
--
CREATE DATABASE IF NOT EXISTS `lojavirtual2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojavirtual2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_animais`
--

CREATE TABLE `tab_animais` (
  `id_animal` int(11) NOT NULL,
  `nome_animal` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_animais`
--

INSERT INTO `tab_animais` (`id_animal`, `nome_animal`, `ativo`) VALUES
(1, 'Gato', 1),
(3, 'Cachorro', 1),
(4, 'Peixe', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_bairros`
--

CREATE TABLE `tab_bairros` (
  `id_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(50) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_bairros`
--

INSERT INTO `tab_bairros` (`id_bairro`, `nome_bairro`, `id_cidade`, `ativo`) VALUES
(1, 'Vila Prudente', 1, 1),
(2, ' Vila Olímpia', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cargos`
--

CREATE TABLE `tab_cargos` (
  `id_cargo` int(11) NOT NULL,
  `nome_cargo` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_cargos`
--

INSERT INTO `tab_cargos` (`id_cargo`, `nome_cargo`, `ativo`) VALUES
(1, 'Vendedor', 1),
(2, 'Estoquista', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_categorias`
--

CREATE TABLE `tab_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_categorias`
--

INSERT INTO `tab_categorias` (`id_categoria`, `nome_categoria`, `ativo`) VALUES
(1, 'Alimentos', 1),
(2, 'Higiene', 1),
(3, 'Brinquedos', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cidades`
--

CREATE TABLE `tab_cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(50) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_cidades`
--

INSERT INTO `tab_cidades` (`id_cidade`, `nome_cidade`, `id_estado`, `ativo`) VALUES
(1, 'São Paulo', 1, 1),
(2, 'Niterói', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_clientes`
--

CREATE TABLE `tab_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(20) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(13) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_clientes`
--

INSERT INTO `tab_clientes` (`id_cliente`, `nome_cliente`, `sobrenome`, `cpf`, `rg`, `nascimento`, `sexo`, `email`, `senha`, `ativo`) VALUES
(1, 'Miguel', 'Jacan', '111.111.111-11', '11.111.111-1', '2022-10-01', 'M', 'migueljacan@email.com', '123', 1),
(2, 'Carlos', 'Pereira Cruz', '111.111.111-12', '11.111.111-2', '1922-09-22', 'M', 'carlos.pereira1922@gmail.com', '2315456151', 1),
(3, 'NICKOLAS', 'Souza', '222.222.333-11', '11.444.444-7', '2022-09-21', 'M', 'nic@email.com', '777', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_enderecos`
--

CREATE TABLE `tab_enderecos` (
  `id_endereco` int(11) NOT NULL,
  `id_logradouro` int(11) NOT NULL,
  `id_bairro` int(11) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_enderecos`
--

INSERT INTO `tab_enderecos` (`id_endereco`, `id_logradouro`, `id_bairro`, `id_cidade`, `id_estado`, `id_cliente`) VALUES
(5, 1, 1, 1, 1, 1),
(6, 2, 2, 2, 2, 3),
(7, 3, 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_estados`
--

CREATE TABLE `tab_estados` (
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(2) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_estados`
--

INSERT INTO `tab_estados` (`id_estado`, `nome_estado`, `ativo`) VALUES
(1, 'SP', 1),
(2, 'RJ', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_fornecedores`
--

CREATE TABLE `tab_fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_fornecedores`
--

INSERT INTO `tab_fornecedores` (`id_fornecedor`, `nome_fornecedor`, `telefone`, `ativo`) VALUES
(1, 'Magnus Fornecedor', '(11)2222-2222', 1),
(2, 'Pedigree Fornecedor', '(11)3222-2222', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_funcionarios`
--

CREATE TABLE `tab_funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `nomeusuario` varchar(50) NOT NULL,
  `perfil` int(1) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `frase` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_funcionarios`
--

INSERT INTO `tab_funcionarios` (`id_funcionario`, `nome_funcionario`, `email`, `sobrenome`, `nomeusuario`, `perfil`, `senha`, `frase`, `id_cargo`, `ativo`) VALUES
(1, 'Miguél ', '', 'Érick Jacquin', 'MiguélJacquin', 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '', 2, 1),
(2, 'Nickolas ', '', 'Nicolau', 'NickolasNicolau', 1, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_itens_pedidos`
--

CREATE TABLE `tab_itens_pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_logradouros`
--

CREATE TABLE `tab_logradouros` (
  `id_logradouro` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `id_bairro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_logradouros`
--

INSERT INTO `tab_logradouros` (`id_logradouro`, `cep`, `logradouro`, `numero`, `id_bairro`) VALUES
(1, '03131-010', 'Rua Orfanato', '158', 1),
(2, '04547-100', 'Rua Lourenço Marques', '158', 2),
(3, '03156-205', 'Rua Professor José Pellegrino', '11', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_lotes`
--

CREATE TABLE `tab_lotes` (
  `id_lote` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `entradadata` date NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_lotes`
--

INSERT INTO `tab_lotes` (`id_lote`, `datavencimento`, `entradadata`, `ativo`) VALUES
(1, '2023-09-01', '2022-09-11', 1),
(2, '2022-12-25', '2022-09-12', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_marcas`
--

CREATE TABLE `tab_marcas` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_marcas`
--

INSERT INTO `tab_marcas` (`id_marca`, `nome_marca`, `ativo`) VALUES
(1, 'Magnus', 1),
(2, 'Pedigree', 1),
(3, 'Whiskas', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_produtos`
--

CREATE TABLE `tab_produtos` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_unidademedida` int(11) DEFAULT NULL,
  `valorunidademedida` int(11) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` varchar(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_produtos`
--

INSERT INTO `tab_produtos` (`id_produto`, `nome_produto`, `id_fornecedor`, `id_lote`, `id_animal`, `id_categoria`, `id_marca`, `id_unidademedida`, `valorunidademedida`, `preco`, `imagem`, `descricao`, `tamanho`, `quantidade`, `ativo`) VALUES
(1, 'ração magnus todo dia', 1, 1, 3, 1, 1, 1, 1, '80.90', 'racao.jpg', '- Indicada para cães adultos;\r\n- Enriquecida com Vitamina E e selênio quelato;\r\n- Antioxidantes que atuam no combate aos radicais livres;\r\n- Prebióticos, fibras e extrato de yucca;\r\n- Auxilia no equilíbrio da flora intestinal, ajudando na formação de fezes mais firmes e com menos cheiro;\r\n- Exclusivo complexo de ingredientes que promove benefícios para o animal;\r\n- Ômegas 3 e 6, biotina e zinco quelato, importantes nutrientes para a manutenção da pelagem sedosa e brilhante;\r\n- Importantes para a manutenção da pelagem sedosa e brilhante,\r\n- Disponível em embalagens de 15 kg e 25 kg.', NULL, 3, 1),
(2, 'Ração Úmida Whiskas', 2, 2, 1, 1, 3, 2, 85, '2.90', 'Whiskas.jpg', '- Indicada para gatos;\r\n- Refeição completa e balanceada;\r\n- Feita com ingredientes naturais de alta qualidade, vitaminas e minerais;\r\n- Sem conservantes, sem corantes artificiais e sem aromatizantes artificiais;\r\n- Suculentos pedacinhos cozidos a vapor;\r\n- Ajuda a manter a saúde do trato urinário;\r\n- Porção ideal de proteína, vitaminas e sais minerais;\r\n- Disponível em embalagem com 85 g.', NULL, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_unidademedidas`
--

CREATE TABLE `tab_unidademedidas` (
  `id_unidademedida` int(11) NOT NULL,
  `nome_unidademedida` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_unidademedidas`
--

INSERT INTO `tab_unidademedidas` (`id_unidademedida`, `nome_unidademedida`, `ativo`) VALUES
(1, 'Kg', 1),
(2, 'g', 1),
(3, 'l', 1),
(4, 'ml', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_animais`
--
ALTER TABLE `tab_animais`
  ADD PRIMARY KEY (`id_animal`);

--
-- Índices para tabela `tab_bairros`
--
ALTER TABLE `tab_bairros`
  ADD PRIMARY KEY (`id_bairro`),
  ADD KEY `fk_id_cidade` (`id_cidade`);

--
-- Índices para tabela `tab_cargos`
--
ALTER TABLE `tab_cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Índices para tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `tab_cidades`
--
ALTER TABLE `tab_cidades`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `fk_id_estado` (`id_estado`);

--
-- Índices para tabela `tab_clientes`
--
ALTER TABLE `tab_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `tab_enderecos`
--
ALTER TABLE `tab_enderecos`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `fk2_id_logradouro` (`id_logradouro`),
  ADD KEY `fk2_id_barrio` (`id_bairro`),
  ADD KEY `fk2_id_cidade` (`id_cidade`),
  ADD KEY `fk2_id_estado` (`id_estado`),
  ADD KEY `fk3_id_cliente` (`id_cliente`);

--
-- Índices para tabela `tab_estados`
--
ALTER TABLE `tab_estados`
  ADD PRIMARY KEY (`id_estado`);

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
  ADD KEY `fk_id_cargo` (`id_cargo`);

--
-- Índices para tabela `tab_itens_pedidos`
--
ALTER TABLE `tab_itens_pedidos`
  ADD KEY `fk_id_produto` (`id_produto`),
  ADD KEY `fk_id_cliente` (`id_cliente`);

--
-- Índices para tabela `tab_logradouros`
--
ALTER TABLE `tab_logradouros`
  ADD PRIMARY KEY (`id_logradouro`),
  ADD KEY `fk_id_barrio` (`id_bairro`);

--
-- Índices para tabela `tab_lotes`
--
ALTER TABLE `tab_lotes`
  ADD PRIMARY KEY (`id_lote`);

--
-- Índices para tabela `tab_marcas`
--
ALTER TABLE `tab_marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_id_fornecedor` (`id_fornecedor`),
  ADD KEY `fk_id_lote` (`id_lote`),
  ADD KEY `fk_id_animal` (`id_animal`),
  ADD KEY `fk_id_categoria` (`id_categoria`),
  ADD KEY `fk_id_unidademedida` (`id_unidademedida`),
  ADD KEY `fk_id_marca` (`id_marca`);

--
-- Índices para tabela `tab_unidademedidas`
--
ALTER TABLE `tab_unidademedidas`
  ADD PRIMARY KEY (`id_unidademedida`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_animais`
--
ALTER TABLE `tab_animais`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tab_bairros`
--
ALTER TABLE `tab_bairros`
  MODIFY `id_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_cargos`
--
ALTER TABLE `tab_cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_cidades`
--
ALTER TABLE `tab_cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_clientes`
--
ALTER TABLE `tab_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_enderecos`
--
ALTER TABLE `tab_enderecos`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tab_estados`
--
ALTER TABLE `tab_estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_fornecedores`
--
ALTER TABLE `tab_fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_funcionarios`
--
ALTER TABLE `tab_funcionarios`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_logradouros`
--
ALTER TABLE `tab_logradouros`
  MODIFY `id_logradouro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_lotes`
--
ALTER TABLE `tab_lotes`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_marcas`
--
ALTER TABLE `tab_marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tab_unidademedidas`
--
ALTER TABLE `tab_unidademedidas`
  MODIFY `id_unidademedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tab_bairros`
--
ALTER TABLE `tab_bairros`
  ADD CONSTRAINT `fk_id_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `tab_cidades` (`id_cidade`);

--
-- Limitadores para a tabela `tab_cidades`
--
ALTER TABLE `tab_cidades`
  ADD CONSTRAINT `fk_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `tab_estados` (`id_estado`);

--
-- Limitadores para a tabela `tab_enderecos`
--
ALTER TABLE `tab_enderecos`
  ADD CONSTRAINT `fk2_id_barrio` FOREIGN KEY (`id_bairro`) REFERENCES `tab_bairros` (`id_bairro`),
  ADD CONSTRAINT `fk2_id_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `tab_cidades` (`id_cidade`),
  ADD CONSTRAINT `fk2_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `tab_estados` (`id_estado`),
  ADD CONSTRAINT `fk2_id_logradouro` FOREIGN KEY (`id_logradouro`) REFERENCES `tab_logradouros` (`id_logradouro`),
  ADD CONSTRAINT `fk3_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tab_clientes` (`id_cliente`);

--
-- Limitadores para a tabela `tab_funcionarios`
--
ALTER TABLE `tab_funcionarios`
  ADD CONSTRAINT `fk_id_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tab_cargos` (`id_cargo`);

--
-- Limitadores para a tabela `tab_itens_pedidos`
--
ALTER TABLE `tab_itens_pedidos`
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tab_clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tab_produtos` (`id_produto`);

--
-- Limitadores para a tabela `tab_logradouros`
--
ALTER TABLE `tab_logradouros`
  ADD CONSTRAINT `fk_id_barrio` FOREIGN KEY (`id_bairro`) REFERENCES `tab_bairros` (`id_bairro`);

--
-- Limitadores para a tabela `tab_produtos`
--
ALTER TABLE `tab_produtos`
  ADD CONSTRAINT `fk_id_animal` FOREIGN KEY (`id_animal`) REFERENCES `tab_animais` (`id_animal`),
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tab_categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_id_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `tab_fornecedores` (`id_fornecedor`),
  ADD CONSTRAINT `fk_id_lote` FOREIGN KEY (`id_lote`) REFERENCES `tab_lotes` (`id_lote`),
  ADD CONSTRAINT `fk_id_marca` FOREIGN KEY (`id_marca`) REFERENCES `tab_marcas` (`id_marca`),
  ADD CONSTRAINT `fk_id_unidademedida` FOREIGN KEY (`id_unidademedida`) REFERENCES `tab_unidademedidas` (`id_unidademedida`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
