/*


CREATE TABLE `tab_cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(50) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ativo` int(1) NOT NULL

  
// Nomes dos campos da tabela tab_cidades



id_cidade
nome_cidade
id_estado
ativo


_id_cidade
_nome_cidade
_id_estado
_ativo


Id_cidade
Nome_cidade
Id_estado
Ativo


*/



 #region "Variáveis"
	
        private int  _id_cidade;
        private string _nome_cidade;
         private int  _id_estado;
        private int _ativo;

        



#endregion

    #region "Propriedades"

        public int Id_cidade
        {
            get { return _id_cidade; }
            set { _id_cidade = value; }
        }
        public string Nome_cidade
        {
            get { return _nome_cidade; }
            set { _nome_cidade = value; }
        }
        
        public int Id_estado
        {
            get { return _id_estado; }
            set { _id_estado = value; }
        }
        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
