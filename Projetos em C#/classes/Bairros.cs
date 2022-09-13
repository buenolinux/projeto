/*


CREATE TABLE `tab_cargos` (
  `id_cargo` int(11) NOT NULL,
  `nome_cargo` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL

  
// Nomes dos campos da tabela tab_cargos

id_cargo
nome_cargo
ativo

_id_cargo
_nome_cargo
_ativo

Id_cargo
Nome_cargo
Ativo

*/



 #region "Variáveis"
	
            private int _id_bairro;
            private int _nome_bairro;
            private int _id_cidade;
            private int _ativo ;

#endregion

    #region "Propriedades"

        public int Id_bairro
        {
            get { return _id_bairro; }
            set { _id_bairro = value; }
        }
        public string Nome_bairro
        {
            get { return _nome_bairro; }
            set { _nome_bairro= value; }
        }
        public int Id_cidade
        {
            get { return _id_cidade; }
            set { _id_cidade = value; }
        }
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
