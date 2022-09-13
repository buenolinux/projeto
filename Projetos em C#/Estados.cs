/*

CREATE TABLE `tab_estados` (
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(2) NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_estados



id_estado
nome_estado
ativo

Id_estado
Nome_estado
Ativo


_id_estado
_nome_estado
_ativo



*/



 #region "Variáveis"
	
        private int  _id_estado;
        private string _nome_estado;
        private int _ativo;

#endregion

    #region "Propriedades"

        
        public int Id_estado
        {
            get { return _id_estado; }
            set { _id_estado = value; }
        }
        
        public string Nome_estado
        {
            get { return _nome_estado; }
            set { _nome_estado = value; }
        }
        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
