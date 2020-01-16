using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCore.PeddEval.Business
{
    // @author: Rodolfo Quezada

    public class EmpresaBS : CommonBusiness
    {

        private DataAccess.Empresa datEmpresa;
        protected string className;

        public EmpresaBS() : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
            datEmpresa = new DataAccess.Empresa();
        }


        public string InsertEmpresa(Dictionary<string, string> data)
        {

            // datos de la empresa

            DataTable dt = datEmpresa.InsertEmpresa(data);
            this.Result = this.datEmpresa.Result;

            return dt.Rows[0][0].ToString();

        }

        public DataTable Todos()
        {
            DataTable dt = this.datEmpresa.GetAllEmpresas();
            this.Result = this.datEmpresa.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }



        public List<string[]> getAllEmpresas()
        {

            DataTable dt = datEmpresa.GetAllEmpresas();

            try
            {

                if (dt.Rows.Count < 1)
                    return null;

                List<string[]> lstEmpresas = new List<string[]>();
                foreach (DataRow dr in dt.Rows)
                {
                    string[] empresa = new string[]
                    {
                    dr[0].ToString(), // id 
                    dr[1].ToString(), // rut
                    dr[2].ToString(), // nombre
                    dr[3].ToString(), // descripcion
                    dr[4].ToString(), // AuditFechaCreacion
                    dr[5].ToString(), // ultima fecha act
                    dr[6].ToString() // usuario actualiza
                    };
                    lstEmpresas.Add(empresa);
                }
                return lstEmpresas;
            }
            catch (Exception) { }
            return null;
        }

    }
}
