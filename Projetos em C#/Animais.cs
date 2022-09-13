/*
  `id_animal` int(11) NOT NULL,
  `nome_animal` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_animais
id_animal
nome_animal
ativo 

_id_animal
_nome_animal
_ativo 

Id_animal
Nome_animal
Ativo 


*/



 #region "Variáveis"
	private int _id_animal;
	private string _nome_animal;
	private int _ativo;
#endregion

    #region "Propriedades"

        public int Id_animal
        {
            get { return _id_produto; }
            set { _id_produto = value; }
        }
        public string Nome_animal
        {
            get { return _nome_animal; }
            set { _nome_animal = value; }
        }

        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
