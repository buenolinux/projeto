/*


CREATE TABLE `tab_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) NOT NULL,
  `ativo` int(1) NOT NULL

  
// Nomes dos campos da tabela tab_categorias



id_categoria
nome_categoria
ativo



_id_categoria
_nome_categoria
_ativo


Id_categoria
Nome_categoria
Ativo

*/



 #region "Variáveis"
	
        private int  _id_categoria;
        private string _nome_categoria;
        private int _ativo;

        



#endregion

    #region "Propriedades"

        public int Id_categoria
        {
            get { return _id_categoria; }
            set { _id_categoria = value; }
        }
        public string Nome_categoria
        {
            get { return _nome_categoria; }
            set { _nome_categoria = value; }
        }

        public int Ativo
        {
            get { return _ativo; }
            set { _ativo = value; }
        }


 #endregion
