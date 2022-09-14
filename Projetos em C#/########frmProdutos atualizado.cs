using ControleDeEstoque.Classe;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ControleDeEstoque.Telas
{
    public partial class frmProdutos : Form
    {
        public frmProdutos()
        {
            InitializeComponent();
        }

        private void toolStripSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaDados())
            {
                try
                {
                    string Destino = Directory.GetCurrentDirectory();
                    CopiarArquivo(txbImagem.Text, @Destino + "\\" + Path.GetFileName(txbImagem.Text));

                    Produto NovoProduto = new Produto(txbNomeProduto.Text,
                                                         int.Parse(cbbFornecedor.SelectedValue.ToString()),
                                                         int.Parse(cbbLote.SelectedValue.ToString()),
                                                         int.Parse(cbbAnimal.SelectedValue.ToString()),
                                                         int.Parse(cbbCategoria.SelectedValue.ToString()),
                                                         int.Parse(cbbMarca.SelectedValue.ToString()),
                                                         int.Parse(cbbUnidadeDeMedida.SelectedValue.ToString()),
                                                        Convert.ToInt32(txbValorUnidadeDeMedida.text),
                                                        Convert.ToDecimal(txbPreco.Text),
                                                        Path.GetFileName(txbImagem.Text),
                                                        txbDescricao.Text,
                                                        Convert.ToInt32(txbTamnho.Text),
                                                        Convert.ToInt32(txbQuantidade.Text),
                                                        1);
                    NovoProduto.InsereProduto();
                    dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
                    LimpaCampos();
                    txbNomeProduto.Focus();
                }
                catch (Exception erro)
                {

                    MessageBox.Show("Erro ao salvar: " + erro, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void LimpaCampos()
        {
            txbId.Text = string.Empty;
            txbNomeProduto.Text = string.Empty;
            txbPreco.Text = string.Empty;
            txbDescricao.Text = string.Empty;
            txbQuantidade.Text = string.Empty;
            txbImagem.Text = string.Empty;
            picFoto.Image = null;
            
            cbbFornecedor.SelectedIndex = -1; 
            cbbLote.SelectedIndex = -1;
            cbbAnimal.SelectedIndex = -1;
            cbbCategoria.SelectedIndex = -1;
            cbbMarca.SelectedIndex = -1;
            cbbUnidadeDeMedida.SelectedIndex = -1;
            txbValorUnidadeDeMedida,
            txbPreco.Text = string.Empty;
            txbTamnho.Text = string.Empty;
            txbNomeProduto.Focus();

        }

        static bool CopiarArquivo(string nomeArquivoOrigem, string nomeArquivoDestino)
        {
            if (File.Exists(nomeArquivoOrigem) == false)
            {
                MessageBox.Show("Atenção! \nNão foi possível encontrar a foto", "Cadastro de Pessoas", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            if (File.Exists(nomeArquivoDestino) == true)
            {
                if (MessageBox.Show("Atenção! \nJá existe foto com esse nome, deseja substituir a foto?", "Cadastro de Pessoas", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                    return false;
            }
            try
            {
                Stream s1 = File.Open(@nomeArquivoOrigem, FileMode.Open, FileAccess.ReadWrite);
                Stream s2 = File.Open(@nomeArquivoDestino, FileMode.Create);

                BinaryReader f1 = new BinaryReader(s1);
                BinaryWriter f2 = new BinaryWriter(s2);

                while (true)
                {
                    byte[] buf = new byte[10240];
                    int sz = f1.Read(buf, 0, 10240);
                    if (sz <= 0)
                        break;
                    f2.Write(buf, 0, sz);
                    if (sz < 10240)
                        break;
                }
                f1.Close();
                f2.Close();
                MessageBox.Show("Foto salva!", "Cadastro de Pessoas", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return true;
            }
            catch (Exception)
            {
                MessageBox.Show("Erro ao salvar a foto", "Cadastro de Pessoas", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
        }

        private Boolean ValidaDados()
        {
/*    txbId    */
            if (cbbFornecedor.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione um fornecedor", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbFornecedor.Focus();
                return false;
            }
            if (cbbLote.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione um lote ", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbLote.Focus();
                return false;
            }
            if (cbbAnimal.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione um animal", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbAnimal.Focus();
                return false;
            }
             if (cbbCategoria.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione uma categoria ", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbCategoria.Focus();
                return false;
            }
             if (cbbMarca.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione uma marca", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbMarca.Focus();
                return false;
            }
            if (cbbUnidadeDeMedida.SelectedIndex == -1)
            {
                MessageBox.Show("Selecione a unidade de medida", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cbbUnidadeDeMedida.Focus();
                return false;
            }
            if (txbValorUnidadeDeMedida.Text == string.Empty)
            {
                MessageBox.Show("Campo valor da unidade de medida obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbValorUnidadeDeMedida.Focus();
                return false;
            }
            if (txbTamnho.Text == string.Empty)
            {
                MessageBox.Show("Campo tamanho obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbTamnho.Focus();
                return false;
            }

            if (txbNomeProduto.Text == string.Empty)
            {
                MessageBox.Show("Campo nome obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbNomeProduto.Focus();
                return false;
            }
            if (txbPreco.Text == string.Empty)
            {
                MessageBox.Show("Campo preço obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbPreco.Focus();
                return false;
            }
            if (txbImagem.Text == string.Empty)
            {
                MessageBox.Show("Campo foto obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                btnImagem.Focus();
                return false;
            }
            if (txbQuantidade.Text == string.Empty)
            {
                MessageBox.Show("Campo Quantidade obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbQuantidade.Focus();
                return false;
            }
            if (txbDescricao.Text == string.Empty)
            {
                MessageBox.Show("Campo descrição obrigatório!", "Cadastro de Produto", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txbDescricao.Focus();
                return false;
            }
            return true;
        }

        private void toolStripAlterar_Click(object sender, EventArgs e)
        {
            if (ValidaDados())
            {
                Produto Atualiza = new Produto(int.Parse(txbId.Text),
                                               txbNomeProduto.Text,
                                               txbDescricao.Text,
                                               Convert.ToInt32(txbQuantidade.Text),
                                               Convert.ToDecimal(txbPreco.Text));
                Atualiza.AlteraProduto();
                LimpaCampos();
                toolStripCancelar.PerformClick();
                dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
                txbNomeProduto.Focus();
            }
        }

        private void FrmProduto_Load(object sender, EventArgs e)
        {
            dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
            dgvProdutos.Columns[0].HeaderText = "Código";
            dgvProdutos.Columns[1].HeaderText = "Nome";
            dgvProdutos.Columns[2].HeaderText = "Foto";
            dgvProdutos.Columns[3].Visible = false;
            dgvProdutos.Columns[4].HeaderText = "Qtde";
            dgvProdutos.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgvProdutos.Columns[5].HeaderText = "Valor";
            dgvProdutos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgvProdutos.Columns[6].Visible = false;
        }

        private void dgvProdutos_Click(object sender, EventArgs e)
        {
            toolStripSalvar.Enabled = false;
            toolStripAlterar.Enabled = true;
            toolStripExcluir.Enabled = true;
            toolStripCancelar.Visible = true;
            txbImagem.Enabled = false;
            gpbFoto.Enabled = true;
            dgvProdutos.DefaultCellStyle.SelectionBackColor = Color.Tomato;
            try
            {
                MostraProduto();
            }
            catch (Exception)
            {

                MessageBox.Show("Atenção! \nNão há imagem para este produto", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }


        private void MostraProduto()
        {
            try
            {
                if (dgvProdutos.SelectedRows.Count > 0)
                {
                    txbId.Text = dgvProdutos.SelectedRows[0].Cells[0].Value.ToString();
                    txbNomeProduto.Text = dgvProdutos.SelectedRows[0].Cells[1].Value.ToString();
                    txbImagem.Text = dgvProdutos.SelectedRows[0].Cells[2].Value.ToString();
                    picFoto.Image = null;
                    picFoto.Load(dgvProdutos.SelectedRows[0].Cells[2].Value.ToString());
                    txbDescricao.Text = dgvProdutos.SelectedRows[0].Cells[3].Value.ToString();
                    txbQuantidade.Text = dgvProdutos.SelectedRows[0].Cells[4].Value.ToString();
                    txbPreco.Text = dgvProdutos.SelectedRows[0].Cells[5].Value.ToString();
                    if (Convert.ToInt32(dgvProdutos.SelectedRows[0].Cells[6].Value.ToString()) == 0)
                    {
                        toolStripAtivar.Visible = true;
                        toolStripDesativar.Visible = false;
                    }
                    else
                    {
                        toolStripAtivar.Visible = false;
                        toolStripDesativar.Visible = true;
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void toolStripCancelar_Click(object sender, EventArgs e)
        {
            LimpaCampos();
            toolStripSalvar.Enabled = true;
            toolStripAlterar.Enabled = false;
            toolStripAlterar.Visible = true;
            toolStripExcluir.Enabled = false;
            toolStripExcluir.Visible = true;
            toolStripCancelar.Visible = false;
            toolStripMudaFoto.Visible = false;
            toolStripDesativar.Visible = false;
            toolStripAtivar.Visible = false;
            btnImagem.Enabled = true;
            gpbFoto.Enabled = false;
            txbNomeProduto.Enabled = true;
            txbPreco.Enabled = true;
            txbDescricao.Enabled = true;
            dgvProdutos.DefaultCellStyle.SelectionBackColor = Color.CornflowerBlue;
            txbNomeProduto.Focus();
        }

        private void toolStripExcluir_Click(object sender, EventArgs e)
        {
            DialogResult Pergunta = MessageBox.Show("Deseja excluir este produto?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (Pergunta == DialogResult.Yes)
            {
                Produto Exclui = new Produto(int.Parse(txbId.Text));
                Exclui.ExcluiProduto();
                LimpaCampos();
                toolStripCancelar.PerformClick();
                dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
                txbNomeProduto.Focus();
            }
        }

        private void toolStripAtivar_Click(object sender, EventArgs e)
        {
            DialogResult Pergunta = MessageBox.Show("Deseja ativar esse produto?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (Pergunta == DialogResult.Yes)
            {
                Produto Ativa = new Produto(int.Parse(txbId.Text));
                Ativa.AtivaProduto();
                LimpaCampos();
                toolStripCancelar.PerformClick();
                dgvProdutos.DefaultCellStyle.SelectionBackColor = Color.CornflowerBlue;
                dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
                txbNomeProduto.Focus();
            }
        }

        private void toolStripDesativar_Click(object sender, EventArgs e)
        {
            DialogResult Pergunta = MessageBox.Show("Deseja desativar esse produto?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (Pergunta == DialogResult.Yes)
            {
                Produto Desativa = new Produto(int.Parse(txbId.Text));
                Desativa.DesativaProduto();
                LimpaCampos();
                toolStripCancelar.PerformClick();
                dgvProdutos.DefaultCellStyle.SelectionBackColor = Color.CornflowerBlue;
                dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
                txbNomeProduto.Focus();
            }
        }

        private void toolStripMudaFoto_Click(object sender, EventArgs e)
        {
            string Destino = Directory.GetCurrentDirectory();
            CopiarArquivo(txbImagem.Text, @Destino + "\\" + Path.GetFileName(txbImagem.Text));

            Produto MudaFoto = new Produto(int.Parse(txbId.Text), Path.GetFileName(txbImagem.Text));
            MudaFoto.AlteraFoto();
            LimpaCampos();
            toolStripCancelar.PerformClick();
            dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
            txbNomeProduto.Enabled = true;
            txbPreco.Enabled = true;
            txbQuantidade.Enabled = true;
            txbDescricao.Enabled = true;
            toolStripMudaFoto.Visible = false;
            toolStripAlterar.Visible = true;
            toolStripExcluir.Visible = true;
            toolStripSalvar.Enabled = true;
            txbNomeProduto.Focus();
        }

        private void cbbBusca_DropDownClosed(object sender, EventArgs e)
        {
            if (cbbBusca.SelectedIndex == 0 || cbbBusca.SelectedIndex == 3)
            {
                txbBuscar.Clear();
                txbBuscar.Enabled = false;
            }
            else
            {
                txbBuscar.Enabled = true;
                txbBuscar.Clear();
                txbBuscar.Focus();
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (cbbBusca.SelectedIndex == 0)
            {
                dgvProdutos.DataSource = Produto.BuscarTodosProdutos();
            }

            if (cbbBusca.SelectedIndex == 1)
            {
                try
                {
                    dgvProdutos.DataSource = Produto.BuscarPorID(int.Parse(txbBuscar.Text));
                }
                catch (Exception)
                {


                }

            }

            if (cbbBusca.SelectedIndex == 2)
            {
                dgvProdutos.DataSource = Produto.BuscarPorNome(txbBuscar.Text);
            }

            if (cbbBusca.SelectedIndex == 3)
            {
                dgvProdutos.DataSource = Produto.BuscarTodosProdutosDesativados();
            }
        }

        private void picFoto_DoubleClick(object sender, EventArgs e)
        {
            toolStripAlterar.Visible = false;
            toolStripAtivar.Visible = false;
            toolStripExcluir.Visible = false;
            toolStripMudaFoto.Visible = true;
            toolStripDesativar.Visible = false;
            toolStripSalvar.Enabled = false;
            btnImagem.Enabled = true;
            btnImagem.PerformClick();
            txbNomeProduto.Enabled = false;
            txbPreco.Enabled = false;
            txbQuantidade.Enabled = false;
            txbDescricao.Enabled = false;
        }

    }
}
