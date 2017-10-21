using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace U2X.Barbearia.Web.dao
{
    public class Usuario : tbl_usuario
    {
        dao.u2xMainEntities db = new dao.u2xMainEntities();

        public void Add(Usuario oUsuario)
        {
            tbl_usuario temp = new tbl_usuario()
            {
                isAdmin = oUsuario.isAdmin,
                login = oUsuario.login,
                senha = oUsuario.senha
            };
            db.tbl_usuario.Add(temp);
            db.SaveChanges();
        }

        public Usuario Login(String sLogin, String sSenha)
        {

            object temp = db.tbl_usuario.Where(usuario =>
           usuario.login == sLogin &&
           usuario.senha == sSenha).FirstOrDefault();

            if (temp != null)
            {
                return ToUsuario((tbl_usuario)temp);
            }
            return null;
        }

        public List<Usuario> GetAll()
        {
            List<Usuario> lstDef = new List<Usuario>();
            List<tbl_usuario> lstTemp = db.tbl_usuario.ToList();
            lstTemp.ForEach(obj =>
            {
                lstDef.Add(ToUsuario(obj));
            });
            return lstDef;
        }

        private Usuario ToUsuario(tbl_usuario obj)
        {
            return new Usuario()
            {
                id = obj.id,
                isAdmin = obj.isAdmin,
                login = obj.login,
                senha = obj.senha
            };
        }
    }
}