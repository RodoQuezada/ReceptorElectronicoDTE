﻿using System;
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
    public class SucursalBS : CommonBusiness
    {
        private DataAccess.Sucursal datSucursal;
        protected string className;
        public SucursalBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datSucursal = new DataAccess.Sucursal();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datSucursal.SelectAll();
            this.Result = this.datSucursal.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }


        public DataTable Select(int IdSucursal)
        {
            DataTable dt = this.datSucursal.Select(IdSucursal);
            this.Result = this.datSucursal.Result;
            return dt;
        }
 
    }
}
