using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using System.Data;
using CoreLibrary;
using CoreLibrary.Business;


namespace NetCore.PeddEval.Business
{
    public class CompaniaBS : CommonBusiness
    {
        private DataAccess.Compania datCompania;
        protected string className;
        public CompaniaBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datCompania = new DataAccess.Compania();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datCompania.SelectAll();
            this.Result = this.datCompania.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

        public DataTable Insert(int RutCompania, String DvCompania, String NomCompania, String GiroCompania, String DirCompania, String FonoCompania, int IdEstado)
        {
            DataTable dt = null;
            try
            {
                dt = this.datCompania.SelectRut(RutCompania);
                this.Result = this.datCompania.Result;
                DateTime date = DateTime.Now;


                if (this.Result.HasError)
                    return null;

                DataRow dr = dt.GetFirstRow();

                if (dr != null)
                {
                    this.Result = Result.GetNewNo(string.Format("Ya existe una empresa con el Rut {0}", RutCompania));
                    return  null;
                }

                using (TransactionScope scope = new TransactionScope())
                {
                    dt = this.datCompania.Insert(RutCompania, DvCompania, NomCompania, GiroCompania, DirCompania, FonoCompania, IdEstado);
                    this.Result = this.datCompania.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return dt;
        }

      
        public DataTable Select(int IdCompania)
        {
            DataTable dt = this.datCompania.Select(IdCompania);
            this.Result = this.datCompania.Result;
            return dt;
        }

   
    }
}
