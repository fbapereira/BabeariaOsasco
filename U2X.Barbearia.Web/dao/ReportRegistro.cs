using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;

namespace U2X.Barbearia.Web.dao
{
    public class ReportRegistro : vw_registro
    {

        private dao.u2xMainEntities db = new dao.u2xMainEntities();

        public List<ReportRegistro> GetList(Int32 idUsuario = 0, DateTime? data = null)
        {
            List<vw_registro> lstTemp;

            if (data == null)
            {
                lstTemp = db.vw_registro.Where(regitro =>
                        (regitro.isUsuario == idUsuario || idUsuario == 0))
                        .ToList<vw_registro>();

            }
            else
            {
                lstTemp = db.vw_registro.Where(regitro =>
                    (regitro.isUsuario == idUsuario || idUsuario == 0) &&
                    (DbFunctions.TruncateTime(regitro.date) == DbFunctions.TruncateTime(data)))
                    .ToList<vw_registro>();
            }

            List<ReportRegistro> lstDef = new List<ReportRegistro>();

            lstTemp.ForEach(obj =>
            {
                lstDef.Add(ToRegistro(obj));
            });

            return lstDef;
        }

        private ReportRegistro ToRegistro(vw_registro obj)
        {
            return new ReportRegistro()
            {
                date = obj.date,
                descricao = obj.descricao,
                login = obj.login,
                isUsuario = obj.isUsuario,
                id = obj.id,
                valor = obj.valor,
                isCartao = obj.isCartao
            };
        }
    }
}