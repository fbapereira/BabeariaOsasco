using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web
{
    public partial class dashboard : System.Web.UI.Page
    {
        List<ReportRegistro> lstReportRegistro;

        protected void Page_Load(object sender, EventArgs e)
        {
            lstReportRegistro = new ReportRegistro().GetList(1, DateTime.Now);
            rptHistorico.DataSource = lstReportRegistro;
            rptHistorico.DataBind();
            CalcularDados();

        }

        private void CalcularDados()
        {
            Decimal valorCartao = 0;
            Decimal valorDinheiro = 0;
            Decimal valorTotal = 0;
            Decimal valorReceber = 0;

            foreach (var item in lstReportRegistro)
            {
                if ((bool)item.isCartao)
                {
                    valorCartao = valorCartao + (decimal)item.valor;
                }
                else
                {
                    valorDinheiro = valorDinheiro + (decimal)item.valor;
                }
                valorTotal = valorTotal + (decimal)item.valor;
            }

            valorReceber = valorTotal * (decimal)0.6 - valorDinheiro;

            lblCartao.InnerText = "R$ " + String.Format("{0:0.00}", valorCartao);
            lblDinheiro.InnerText = "R$ " + String.Format("{0:0.00}", valorDinheiro);
            lblReceber.InnerText = "R$ " + String.Format("{0:0.00}", valorReceber);
            lblTotal.InnerText = "R$ " + String.Format("{0:0.00}", valorTotal);
        }
    }
}