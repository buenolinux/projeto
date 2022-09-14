//nome_produto,id_fornecedor,id_lote,
//id_animal,id_categoria,id_marca,id_unidademedida,

//valorunidademedida,preco,imagem,descricao,tamanho,quantidade,ativo

id_produto       
nome_produto    
id_fornecedor       
id_lote       
id_animal       
id_categoria       
id_marca       
id_unidademedida    
valorunidademedida    
preco    
imagem    
descricao    
tamanho  
quantidade       
ativo 


 cn.query = string.Format("INSERT INTO tab_produtos(nome_produto,id_fornecedor,id_lote,id_animal,id_categoria,id_marca,id_unidademedida,valorunidademedida,preco,imagem,descricao,tamanho,quantidade,ativo) VALUES('{0}', '{1}', {2}, {3}, {4}, {5},{6},{7},{8}{9},'{10}','{11}',{12},{13},{14})",
                Nome_produto,Id_fornecedor,Id_lote,Id_animal,Id_categoria,Id_marca,Id_unidademedida,Valorunidademedida,Preco.ToString(CultureInfo.InvariantCulture),Imagem,Descricao,Tamanho,Quantidade,Ativo);               
               




cn.query = string.Format("UPDATE tab_produtos SET nome_produto = '{0}', id_fornecedor ={1}, id_lote={2}, id_animal={3}, id_categoria={4}, id_marca={5}, id_unidademedida={6}, valorunidademedida={7}, preco={8}, imagem={9}, descricao={10}, tamanho={11}, quantidade={12}, ativo ={13}  WHERE id_produto = {14}",  Nome_produto, Id_fornecedor, Id_lote, Id_animal, Id_categoria, Id_marca, Id_unidademedida, Valorunidademedida, Preco.ToString(CultureInfo.InvariantCulture), Imagem, Descricao, Tamanho, Quantidade, Ativo), Id_produto);
                

cn.query = string.Format("UPDATE tab_produtos SET imagem = '{0}' WHERE id_produto = {1}", Imagem, Id_produto);

cn.query = string.Format("UPDATE tab_produtos SET ativo = 0 WHERE id_produto = {0}", Id_produto);



txbId 
txbNomeProduto,
cbbFornecedor,
cbbLote,
cbbAnimal,
cbbCategoria,
cbbMarca,
cbbUnidadeDeMedida,
txbValorUnidadeDeMedida,
txbPreco,
txbImagem,
txbDescricao,
txbTamnho,
txbQuantidade,
1

//________________



btnImagem 

 
 txbNomeProduto.Text,
                                                      Path.GetFileName(txbImagem.Text),
                                                      txbDescricao.Text,
                                                      Convert.ToInt32(txbQuantidade.Text),
                                                      Convert.ToDecimal(txbPreco.Text),
                                                      1);
 
 
 
 
 
 
