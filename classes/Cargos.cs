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
	
        private int _id_cargo;
        private string _nome_cargo;
        private int _ativo;

#endregion

    #region "Propriedades"

        public int Id_cargo
        {
            get { return _id_cargo; }
            set { _id_cargo = value; }
        }
        public string Nome_cargo
        {
            get { return _nome_cargo; }
            set { _nome_cargo= value; }
        }

        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
