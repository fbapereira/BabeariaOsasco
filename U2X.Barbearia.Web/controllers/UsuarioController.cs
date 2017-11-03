
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web.controllers
{
    [RoutePrefix("Usuario")]
    public class UsuarioController : ApiController
    {
        [HttpGet]
        [Route("Login/{arg1}/{arg2}")]
        public Usuario Login(string arg1, string arg2)
        {
            string login = arg1;
            string senha = arg2;

            Usuario oUsuario = new Usuario();
            return oUsuario.Login(login, senha);
        }

        [HttpGet]
        public List<Usuario> Get()

        {
            Usuario oUsuario = new Usuario();
            return oUsuario.GetAll();
        }

        [HttpPost]
        public tbl_usuario Post([FromBody]Usuario value)
        {
            U2xDB db = new U2xDB();
            tbl_usuario temp = (tbl_usuario)db.tbl_usuario.Where(usuario => usuario.login == value.login).FirstOrDefault();

            if (temp == null)
            {
                db.tbl_usuario.Add(value);
                db.SaveChanges();
                temp = (tbl_usuario)db.tbl_usuario.Where(usuario => usuario.login == value.login).FirstOrDefault();
                return temp;
            }
            return null;
        }

        [HttpPut]
        public void Put(int id, [FromBody]tbl_usuario value)
        {
            U2xDB db = new U2xDB();
            tbl_usuario temp = (tbl_usuario)db.tbl_usuario.Where(usuario => usuario.id == id).FirstOrDefault();

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