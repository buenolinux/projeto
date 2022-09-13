/*

CREATE TABLE `tab_fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_fornecedores



id_fornecedor
nome_fornecedor
telefone
ativo

Id_fornecedor
Nome_fornecedor
Telefone
Ativo


_id_fornecedor
_nome_fornecedor
_telefone
_ativo


*/



 #region "Variáveis"
	
        private int _id_fornecedor;
        private string _nome_fornecedor;
        private string_telefone;
        private int _ativo;

#endregion

    #region "Propriedades"

        
        public int Id_fornecedor
        {
            get { return _id_fornecedor; }
            set { _id_fornecedor = value; }
        }
        
        public string Nome_fornecedor
        {
            get { return _nome_fornecedor; }
            set { _nome_fornecedor = value; }
        }

         
        public string Telefone
        {
            get { return _telefone; }
            set { _telefone = value; }
        }
        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
