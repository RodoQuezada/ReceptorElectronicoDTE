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
    public class AreaFuncionalBS : CommonBusiness
    {
        private DataAccess.AreaFuncional datAreaFuncional;
        protected string className;
        public AreaFuncionalBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datAreaFuncional = new DataAccess.AreaFuncional();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datAreaFuncional.SelectAll();
            this.Result = this.datAreaFuncional.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

       
        public DataTable Select(int IdAreaFuncional)
        {
            DataTable dt = this.datAreaFuncional.Select(IdAreaFuncional);
            this.Result = this.datAreaFuncional.Result;
            return dt;
        }

    
    }
}
