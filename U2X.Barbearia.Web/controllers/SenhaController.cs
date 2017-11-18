
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web.controllers
{
    [RoutePrefix("Senha")]
    public class SenhaController : ApiController
    {
        [HttpPost]
        public void Senha([FromBody]tbl_usuario value)
        {
            U2xDB db = new U2xDB();
            tbl_usuario temp = (tbl_usuario)db.tbl_usuario.Where(usuario => usuario.id == value.id).FirstOrDefault();

            if (temp != null)
            {
                //temp.isAdmin = value.isAdmin;
                //temp.login = value.login;
                temp.senha = value.senha;

                db.SaveChanges();
                //return temp;
            }
            //return null;
        }
    }
}