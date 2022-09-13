/*

CREATE TABLE `tab_marcas` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_marcas




id_marca
nome_marca
ativo


Id_marca
Nome_marca
Ativo

_id_marca
_nome_marca
_ativo


*/



 #region "Variáveis"
	
        private int _id_marca;
        private string _nome_marca;
        private int _ativo;

#endregion

    #region "Propriedades"

        
        public int Id_marca
        {
            get { return _id_marca; }
            set { _id_marca = value; }
        }
        
        public string Nome_marca
        {
            get { return _nome_marca; }
            set { _nome_marca = value; }
        }

        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
