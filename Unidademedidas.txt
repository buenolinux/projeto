/*

CREATE TABLE `tab_unidademedidas` (
  `id_unidademedida` int(11) NOT NULL,
  `nome_unidademedida` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_unidademedidas

id_unidademedida
nome_unidademedida
ativo


Id_unidademedida
Nome_unidademedida
Ativo

_id_unidademedida
_nome_unidademedida
_ativo


*/



 #region "Variáveis"
	
        private int id_unidademedida;
        private string _nome_unidademedida;
        private int _ativo;

#endregion

    #region "Propriedades"

        
        public int Id_unidademedida
        {
            get { return _id_unidademedida; }
            set { _id_unidademedida = value; }
        }
        
        public string Nome_unidademedida
        {
            get { return _nome_unidademedida; }
            set { _nome_unidademedida = value; }
        }

        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
