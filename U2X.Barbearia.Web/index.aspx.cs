using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web
{
    public partial class index : System.Web.UI.Page
    {
        private void ClearMsg()
        {
            divMsgDados.Visible = false;
            divMsgInvalido.Visible = false;

        }
        protected void btn_entrar_Click(object sender, EventArgs e)
        {
            ClearMsg();

            if (String.IsNullOrEmpty(txtLogin.Value) ||
               String.IsNullOrEmpty(txtPassword.Value))
            {
                divMsgDados.Visible = true;
                return;
            }

            Usuario oUsuario = new Usuario();
            oUsuario = oUsuario.Login(txtLogin.Value, txtPassword.Value);
            if (oUsuario == null)
            {
                divMsgInvalido.Visible = true;
                return;
            }
        }
    }
}