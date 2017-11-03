using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using U2X.Barbearia.Web.dao;

namespace U2X.Barbearia.Web.controllers
{

    [RoutePrefix("ReportRegistro")]
    public class ReportRegistroController : ApiController
    {
        [HttpGet]
        [Route("GetByDate/{arg1}/{arg2}")]
        public IEnumerable<ReportRegistro> Get(string arg1, string arg2)
        {
            Int32 idUsuario = Convert.ToInt32(arg1);
            DateTime dtData = DateTime.ParseExact(arg2, "ddMMyyyy", CultureInfo.InvariantCulture);
            return new ReportRegistro().GetList(idUsuario, dtData);
        }

        //[HttpGet]
        //public IEnumerable<ReportRegistro> GetNoData(Int32 id)
        //{
        //    return new ReportRegistro().GetList(id);
        //}



        // POST api/<controller>
        public void Post([FromBody]ReportRegistro value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}