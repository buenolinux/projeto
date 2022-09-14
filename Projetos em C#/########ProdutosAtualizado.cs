using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SisVendas.Classes
{
    public class Produto
    {
        #region "Variáveis"
/*
id_produto` int(11) NOT NULL,
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


id_produto       
nome_produto    
id_fornecedor       
id_lote       
id_animal       
id_categoria       
id_marca       
id_unidademedida    
valorunidademedida    
preco    
imagem    
descricao    
tamanho  
quantidade       
ativo    

Id_fornecedor		id_fornecedor       
Nome_produto 		nome_produto    
Id_fornecedor 		id_fornecedor       
Id_lote  		    id_lote       
Id_animal 		    id_animal       
Id_categoria		id_categoria       
Id_marca 		    id_marca       
Id_unidademedida 	id_unidademedida    
Valorunidademedida 	valorunidademedida    
Preco 			    preco    
Imagem 			    imagem    
Descrica 		    descricao    
Tamanho 		    tamanho  
Quantidade 		    quantidade       
Ativo			    ativo 

*/
        private int _id_produto;
        private string _nome_produto;
        private int _id_fornecedor;
        private int _id_lote ;
        private int _id_animal;
        private int _id_categoria;
        private int _id_marca;
        private int _id_unidademedida;
        private int _valorunidademedida;
        private decimal  _preco;
        private string _imagem;
        private string _descrica;
        private int _tamanho;
        private int _quantidade;
        private int _ativo;

        #endregion

        #region "Propriedades"

        public int Id_produto
        {
            get { return _id_produto; }
            set { _id_produto = value; }
        }

        public string Nome_produto
        {
            get { return _nome_produto; }
            set { _nome_produto = value; }
        }

        public int Id_fornecedor
        {
            get { return _id_fornecedor; }
            set { _id_fornecedor = value; }
        }

        public int Id_lote
        {
            get { return _id_lote; }
            set { _id_lote = value; }
        }

        public int Id_animal
        {
            get { return _id_animal; }
            set { _id_animal = value; }
        }

         public int Id_categoria
        {
            get { return id_categoria; }
            set { id_categoria = value; }
        }

        public int Id_marca
        {
            get { return _id_marca; }
            set { _id_marca = value; }
        }

        public int Id_unidademedida
        {
            get { return _id_unidademedida; }
            set { _id_unidademedida = value; }
        }


        public int Valorunidademedida
        {
            get { return _valorunidademedida; }
            set { _valorunidademedida = value; }
        }

         public decimal Preco
        {
            get { return _preco; }
            set { _preco = value; }
        }

         public string Imagem
        {
            get { return _imagem; }
            set { _imagem = value; }
        }
         
         public string Descrica
        {
            get { return _descrica; }
            set { _descrica = value; }
        }
        public int Tamanho
        {
            get { return _tamanho; }
            set { _tamanho = value; }
        }
         
        public int Quantidade
        {
            get { return _quantidade; }
            set { _quantidade = value; }
        }
        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }
        #endregion

        #region "Construtores"

        // Construtor padrão
        public Produto()
        {
            Id_produto = 0;
            Nome_produto = string.Empty;
            Id_fornecedor;
            Id_lote = 0;
            Id_animal= 0;
            Id_categoria = 0;
            Id_marca = 0 ;
            Id_unidademedida = 0;
            Valorunidademedida = 0;
            Preco =0;
            Imagem = string.Empty;
            Descrica = string.Empty;
            Tamanho = 0;
            Quantidade = 0;
            Ativo = 0;
        }

        // Construtor para inserir um produto   int id_produto,
        public Produto( string nome_produto,    
                      int  id_fornecedor,       
                      int  id_lote,       
                      int  id_animal,       
                      int  id_categoria,       
                      int  id_marca,       
                      int  id_unidademedida,  
                      int  valorunidademedida,    
                      decimal  preco,    
                      string  imagem,    
                      string  descricao,    
                      int  tamanho,  
                      int  quantidade,       
                      int  ativo   )
        {
                    //Id_fornecedor	    =	id_fornecedor;
                    Nome_produto 	    =	nome_produto;
                    Id_fornecedor 	    =	id_fornecedor;
                    Id_lote  	        =	id_lote;
                    Id_animal 	        =	id_animal;
                    Id_categoria	    =	id_categoria;
                    Id_marca 	        =	id_marca;
                    Id_unidademedida 	=	id_unidademedida;
                    Valorunidademedida 	=	valorunidademedida;
                    Preco 	            =	preco;
                    Imagem 	            =	imagem;
                    Descrica 	        =	descricao;
                    Tamanho 	        =	tamanho;
                    Quantidade 	        =	quantidade;
                    Ativo	            =	ativo;


        }

        // Construtor para alterar um produto
        public Produto(string nome_produto,    
                      int  id_fornecedor,       
                      int  id_lote,       
                      int  id_animal,       
                      int  id_categoria,       
                      int  id_marca,       
                      int  id_unidademedida,  
                      int  valorunidademedida,    
                      decimal  preco,    
                      string  descricao,    
                      int  tamanho,  
                      int  quantidade,       
                      int  ativo)
        {            
        Nome_produto 	    =	nome_produto;
        Id_fornecedor 	    =	id_fornecedor;
        Id_lote  	        =	id_lote;
        Id_animal 	        =	id_animal;
        Id_categoria	    =	id_categoria;
        Id_marca 	        =	id_marca;
        Id_unidademedida 	=	id_unidademedida;
        Valorunidademedida 	=	valorunidademedida;
        Preco 	            =	preco;
        Descrica 	        =	descricao;
        Tamanho 	        =	tamanho;
        Quantidade 	        =	quantidade;
        Ativo	            =	ativo;
        }

        // Construtor para alterar a foto de um produto
        public Produto(int id_produto, string imagem)
        {
            Id_produto = id_produto;
            Imagem = imagem;
        }

        // Construtor para Ativar/Desativar um produto
        public Produto(int id_produto, int ativo)
        {
            Id_produto = id_produto;
            Ativo = ativo;
        }

        // Construtor para o DataGrid buscar um produto
        public Produto(int id_produto)
        {
            Id_produto = id_produto;
        }

        // Construtor para entrada e saída de produto
        public Produto(int id_produto, int quantidade, int ativo)
        {
            Id_produto = id_produto;
            Quantidade = quantidade;
            Ativo = ativo;
        }

        #endregion

        #region "Métodos"

        // Método para inserir um produto
        public void InsereProduto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("INSERT INTO tab_produtos(nome_produto,id_fornecedor,id_lote,id_animal,id_categoria,id_marca,id_unidademedida,valorunidademedida,preco,imagem,descricao,tamanho,quantidade,ativo) VALUES('{0}', '{1}', {2}, {3}, {4}, {5},{6},{7},{8}{9},'{10}','{11}',{12},{13},{14})",
                Nome_produto,Id_fornecedor,Id_lote,Id_animal,Id_categoria,Id_marca,Id_unidademedida,Valorunidademedida,Preco.ToString(CultureInfo.InvariantCulture),Imagem,Descricao,Tamanho,Quantidade,Ativo);               
                 //Nome, Foto, Descricao, Qtde, Valor.ToString(CultureInfo.InvariantCulture), Ativo);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Produto inserido!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }


        // Método para alterar um produto
        public void AlteraProduto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET nome_produto = '{0}', id_fornecedor ={1}, id_lote={2}, id_animal={3}, id_categoria={4}, id_marca={5}, id_unidademedida={6}, valorunidademedida={7}, preco={8}, imagem={9}, descricao={10}, tamanho={11}, quantidade={12}, ativo ={13}  WHERE id_produto = {14}",  Nome_produto, Id_fornecedor, Id_lote, Id_animal, Id_categoria, Id_marca, Id_unidademedida, Valorunidademedida, Preco.ToString(CultureInfo.InvariantCulture), Imagem, Descricao, Tamanho, Quantidade, Ativo), Id_produto);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Produto alterado!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }


        //Método para Excluir um produto
        public void ExcluiProduto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = String.Format("DELETE FROM tab_produtos WHERE id_produto = {0}", Id_produto);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Produto excluído!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }


        // Método para alterar a foto de um produto
        public void AlteraFoto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET imagem = '{0}' WHERE id_produto = {1}", Imagem, Id_produto);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Foto alterada", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }


        // Método para Desativar um produto
        public void DesativaProduto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET ativo = 0 WHERE id_produto = {0}", Id_produto);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Produto desativado!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }


        // Método para Ativar um produto
        public void AtivaProduto()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET ativo = 1 WHERE id_produto = {0}", Id_produto);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
                MessageBox.Show("Produto ativado!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }



        // Método para mostrar "todos os produtos" no DataGridView
        public static dynamic BuscarTodosProdutos()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = "SELECT * FROM tab_produtos WHERE ativo = 1";
                cn.da = new MySqlDataAdapter(cn.query, cn.conexao);
                cn.ds = new DataSet();
                cn.da.Fill(cn.ds, "Produtos");
                return cn.ds.Tables["Produtos"];
            }
            catch (Exception)
            {

                throw;
            }
        }



        // Método para mostrar "todos os produtos" desativados
        public static dynamic BuscarTodosProdutosDesativados()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = "SELECT * FROM tab_produtos WHERE ativo = 0";
                cn.da = new MySqlDataAdapter(cn.query, cn.conexao);
                cn.ds = new DataSet();
                cn.da.Fill(cn.ds, "Produtos");
                return cn.ds.Tables["Produtos"];
            }
            catch (Exception)
            {

                throw;
            }
        }




        // Método para buscar por nome
        public static dynamic BuscarPorNome(string nome_produto)
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = "SELECT * FROM tab_produtos WHERE nome_produto LIKE '%" + nome_produto + "%'";
                cn.da = new MySqlDataAdapter(cn.query, cn.conexao);
                cn.ds = new DataSet();
                cn.da.Fill(cn.ds, "Produtos");
                return cn.ds.Tables["Produtos"];
            }
            catch (Exception)
            {

                throw;
            }
        }




        // Método para buscar por ID
        public static dynamic BuscarPorID(int id)
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = "SELECT * FROM tab_produtos WHERE id_produto = " + id;
                cn.da = new MySqlDataAdapter(cn.query, cn.conexao);
                cn.ds = new DataSet();
                cn.da.Fill(cn.ds, "Produtos");
                return cn.ds.Tables["Produtos"];
            }
            catch (Exception)
            {

                throw;
            }
        }


        // Método para mostrar "todas os produtos ativos" no ComboBox
        public static dynamic CarregaCombo()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = "SELECT * FROM tab_produtos WHERE ativo = 1 ORDER BY nome_produto";
                cn.da = new MySqlDataAdapter(cn.query, cn.conexao);
                cn.ds = new DataSet();
                cn.da.Fill(cn.ds, "Produtos");
                return cn.ds.Tables["Produtos"];
            }
            catch (Exception)
            {

                throw;
            }
        }


        // Método para dar baixa na quantidade dos produtos
        public void BaixaNosProdutos()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET quantidade = quantidade - {0} WHERE id_produto = {1} AND ativo = {2}", Quantidade, Id_produto, Ativo);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }



        // Método para repor a quantidade dos produtos
        public void ReporProdutos()
        {
            Conexao cn = new Conexao();
            try
            {
                cn.query = string.Format("UPDATE tab_produtos SET quantidade = quantidade + {0} WHERE id_produto = {1} AND ativo = {2}", Quantidade, Id_produto, Ativo);
                cn.comando = new MySqlCommand(cn.query, cn.conexao);
                cn.AbreConexao();
                cn.comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                cn.FechaConexao();
            }
        }

        #endregion
    }
}
