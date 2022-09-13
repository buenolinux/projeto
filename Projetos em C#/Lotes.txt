/*

CREATE TABLE `tab_lotes` (
  `id_lote` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `entradadata` date NOT NULL,
  `ativo` int(1) NOT NULL
  
// Nomes dos campos da tabela tab_lotes



id_lote
datavencimento
entradadata
ativo

Id_lote
Datavencimento
Entradadata
Ativo

_id_lote
_datavencimento
_entradadata
_ativo


*/



 #region "Variáveis"
	
        private int _id_lote;
        private date _datavencimento;
        private data _entradadata;
        private int _ativo;

#endregion

    #region "Propriedades"

        
        public int Id_fornecedor
        {
            get { return _id_lote; }
            set { _id_lote = value; }
        }
        
        public date Datavencimento
        {
            get { return _datavencimento; }
            set { _datavencimento = value; }
        }

         
        public date Entradadata
        {
            get { return _entradadata; }
            set { _entradadata = value; }
        }
        
        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
