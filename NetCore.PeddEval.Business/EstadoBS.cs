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
    public class EstadoBS : CommonBusiness
    {
        private DataAccess.Estado datEstado;
        protected string className;
        public EstadoBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datEstado = new DataAccess.Estado();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datEstado.SelectAll();
            this.Result = this.datEstado.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

        //public string Insert(string Description, string WebIcon, string WebClass, bool Active, string UserRecord)
        //{
        //    string cadena = null;
        //    try
        //    {
        //        DataTable dt = this.datArea.SelectByName(Description);
        //        this.Result = this.datArea.Result;
        //        DateTime date = DateTime.Now;


        //        if (this.Result.HasError)
        //            return null;

        //        DataRow dr = dt.GetFirstRow();

        //        if (dr != null)
        //        {
        //            this.Result = Result.GetNewNo(string.Format("Ya existe una área con el nombre {0}", Description));
        //            return null;
        //        }

        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            cadena = this.datArea.Insert(Description, WebIcon, WebClass, Active, UserRecord, date, null, null);
        //            this.Result = this.datArea.Result;
        //            scope.Complete();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return null;
        //    }
        //    return "";
        //}

        //public DataTable Select(int Id)
        //{
        //    DataTable dt = this.datArea.Select(Id);
        //    this.Result = this.datArea.Result;
        //    return dt;
        //}

        //public string Edit(int AreaId, string Description, string WebIcon, string WebClass, bool Active, string UserRecord)
        //{
        //    string cadena = null;
        //    try
        //    {
        //        DataTable dt = this.datArea.SelectByName(Description);
        //        this.Result = this.datArea.Result;
        //        DateTime date = DateTime.Now;


        //        if (this.Result.HasError)
        //            return null;

        //        DataRow dr = dt.GetFirstRow();

        //        if (dr != null && Convert.ToInt32(dr["AreaId"]) != AreaId)
        //        {
        //            this.Result = Result.GetNewNo(string.Format("Ya existe una área con el nombre {0}", Description));
        //            return null;
        //        }

        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            cadena = this.datArea.Edit(AreaId, Description, WebIcon, WebClass, Active, UserRecord, null, date, UserRecord);
        //            this.Result = this.datArea.Result;
        //            scope.Complete();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return null;
        //    }
        //    return "";
        //}

        //public void DeleteArea(string Id)
        //{
        //    try
        //    {
        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            this.datArea.DeleteArea(Id);
        //            this.Result = this.datArea.Result;
        //            if (this.Result.HasError)
        //                return;

        //            scope.Complete();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return;
        //    }
        //    return;
        //}
    }
}
