using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace U2X.Barbearia.Web.dao
{
    public class Registro : tbl_registro
    {
        public String usuario;
        public String servico;
        public String preco;

        private dao.U2xDB db = new dao.U2xDB();

        private List<Usuario> lstUsuario = new List<Usuario>();

        public void Add(Int32 idUsuario, Int32 idCriador, Int32 idServico, Boolean isCartao)
        {
            tbl_registro registro = new tbl_registro()
            {
                data = DateTime.Now,
                idUsuario = idUsuario,
                idCriador = idCriador,
                idServico = idServico,
                isCartao = isCartao
            };
            db.tbl_registro.Add(registro);
            db.SaveChanges();

        }

        public List<Registro> GetList(Int32 idUsuario = 0, DateTime? data = null)
        {
            List<tbl_registro> lstTemp;

            if (data == null)
            {
                lstTemp = db.tbl_registro.Where(regitro =>
                        (regitro.idUsuario == idUsuario || idUsuario == 0))
                        .ToList<tbl_registro>();

            }
            else
            {
                lstTemp = db.tbl_registro.Where(regitro =>
                    (regitro.idUsuario == idUsuario || idUsuario == 0) &&
                    (regitro.data.Value.ToShortDateString() == data.Value.ToShortDateString()))
                    .ToList<tbl_registro>();
            }


            lstUsuario = new Usuario().GetAll();

            List<Registro> lstDef = new List<Registro>();

            lstTemp.ForEach(obj =>
             {
                 lstDef.Add(ToRegistro(obj));
             });

            lstDef.OrderBy(x => x.data);

            return lstDef;
        }

        private Registro ToRegistro(tbl_registro obj)
        {



            return new Registro()
            {
                id = obj.id,
                data = obj.data,
                idCriador = obj.idCriador,
                idServico = obj.idServico,
                idUsuario = obj.idUsuario,
            };
        }
    }
}