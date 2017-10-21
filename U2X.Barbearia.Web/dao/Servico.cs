using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace U2X.Barbearia.Web.dao
{
    public class Servico : tbl_servico
    {
        private dao.u2xMainEntities db = new dao.u2xMainEntities();

        public List<Servico> GetList()
        {
            List<Servico> lstDef = new List<Servico>();
            List<tbl_servico> lstTemp = db.tbl_servico.ToList();
            lstTemp.ForEach(obj =>
            {
                lstDef.Add(ToServico(obj));
            });
            return lstDef;
        }

        private Servico ToServico(tbl_servico obj)
        {
            return new Servico()
            {
                descricao = obj.descricao,
                id = obj.id,
                valor = obj.valor
            };
        }
    }
}