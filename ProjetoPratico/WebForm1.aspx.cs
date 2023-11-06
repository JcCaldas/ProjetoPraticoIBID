using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ProjetoPratico
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtMudarCorFundoEFonte(TextBox txt)
        {
            txt.BackColor = System.Drawing.Color.Red;
            txt.ForeColor = System.Drawing.Color.White;

        }

        protected void ddlMudarCorFundoEFonte(DropDownList ddl)
        {
            ddl.BackColor = System.Drawing.Color.Red;
            ddl.ForeColor = System.Drawing.Color.White;

        }

        protected void lblCampoObrigatorio(Label lbl, Label lbl2)
        {
            lbl.Text = $"Campo \"{lbl2.Text.ToUpper()}\" é obrigatório!";
            lbl.BackColor = System.Drawing.Color.Transparent;
            lbl.ForeColor = System.Drawing.Color.White;

        }

        protected void ResetCorETextoLblPanel()
        {
            //resetar todas as cores
            //panel 2
            txtNome.BackColor = System.Drawing.Color.White;
            txtNome.ForeColor = System.Drawing.Color.Black;
            txtSobrenome.BackColor = System.Drawing.Color.White;
            txtSobrenome.ForeColor = System.Drawing.Color.Black;
            ddlGenero.BackColor = System.Drawing.Color.White;
            ddlGenero.ForeColor = System.Drawing.Color.Black;
            txtCelular.BackColor = System.Drawing.Color.White;
            txtCelular.ForeColor = System.Drawing.Color.Black;

            //panel 3
            txtEndereco.BackColor = System.Drawing.Color.White;
            txtEndereco.ForeColor = System.Drawing.Color.Black;
            txtCidade.BackColor = System.Drawing.Color.White;
            txtCidade.ForeColor = System.Drawing.Color.Black;
            txtCEP.BackColor = System.Drawing.Color.White;
            txtCEP.ForeColor = System.Drawing.Color.Black;

            //panel 4
            txtLogin.BackColor = System.Drawing.Color.White;
            txtLogin.ForeColor = System.Drawing.Color.Black;
            txtSenha.BackColor = System.Drawing.Color.White;
            txtSenha.ForeColor = System.Drawing.Color.Black;

            


            //resetar todas as lblPanel
            lblPanel2.Text = "";
            lblPanel3.Text = "";
            lblPanel4.Text = "";
        }

        protected void btnProximoPanel1_Click(object sender, EventArgs e)
        {
            
            ResetCorETextoLblPanel();

            if (txtNome.Text == "")
            {
                txtMudarCorFundoEFonte(txtNome);
                lblCampoObrigatorio(lblPanel2, lblNome);
                return;
            }

            if (txtSobrenome.Text == "")
            {

                txtMudarCorFundoEFonte(txtSobrenome);
                lblCampoObrigatorio(lblPanel2, lblSobrenome);
                return;
            }

            if (ddlGenero.SelectedIndex == 0)
            {

                ddlMudarCorFundoEFonte(ddlGenero);
                lblCampoObrigatorio(lblPanel2, lblGenero);
                return;
            }
                 
            if (txtCelular.Text == "")
            {

                txtMudarCorFundoEFonte(txtCelular);
                lblCampoObrigatorio(lblPanel2, lblCelular);
                return;
            }


            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;

        }

        protected void btnVoltarPanel2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;

            ResetCorETextoLblPanel();

        }

        protected void btnProximoPanel2_Click(object sender, EventArgs e)
        {
            ResetCorETextoLblPanel();

            if (txtEndereco.Text == "")
            {
                txtMudarCorFundoEFonte(txtEndereco);
                lblCampoObrigatorio(lblPanel3, lblEndereco);
                return;
            }

            if (txtCidade.Text == "")
            {

                txtMudarCorFundoEFonte(txtCidade);
                lblCampoObrigatorio(lblPanel3, lblCidade);
                return;
            }

            if (txtCEP.Text == "")
            {

                txtMudarCorFundoEFonte(txtCEP);
                lblCampoObrigatorio(lblPanel3, lblCEP);
                return;
            }

            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }

        protected void btnVoltarPanel3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            ResetCorETextoLblPanel();

            if (txtLogin.Text == "")
            {
                txtMudarCorFundoEFonte(txtLogin);
                lblCampoObrigatorio(lblPanel4, lblLogin);
                return;
            }

            if (txtSenha.Text == "")
            {
                txtMudarCorFundoEFonte(txtSenha);
                lblCampoObrigatorio(lblPanel4, lblSenha);
                return;
            }

            lblRespostaEnvio.Text = "Seus dados foram enviados com sucesso!";
            btnVoltarPanel3.Visible = false;
            btnEnviar.Visible = false;
        }
    }
}