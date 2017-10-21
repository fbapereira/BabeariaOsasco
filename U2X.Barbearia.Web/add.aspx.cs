using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregaProfissional();
                CarregaServico();
            }
        }

        protected void btn_salvar_ServerClick(object sender, EventArgs e)
        {
            Int32 idServico = Convert.ToInt32(slServicos.Value);
            Int32 idProfissional = Convert.ToInt32(slProfissional.Value);
            new Registro().Add(1, idProfissional, idServico, ckCartao.Checked);
            CarregaProfissional();
            CarregaServico();
        }

        private void CarregaServico()
        {
            slServicos.DataSource = new Servico().GetList();
            slServicos.DataValueField = "id";
            slServicos.DataTextField = "descricao";
            slServicos.DataBind();

            slServicos.Items.Add(new ListItem("Selecione um seviço", "0", false));
            ListItem li = slServicos.Items.FindByValue("0");
            li.Selected = true;
        }
        private void CarregaProfissional()
        {
            slProfissional.DataSource = new Usuario().GetAll();
            slProfissional.DataValueField = "id";
            slProfissional.DataTextField = "login";
            slProfissional.DataBind();

            ListItem li = slProfissional.Items.FindByValue("1");
            li.Selected = true;
        }
    }
}