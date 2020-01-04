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
    public class TipoEvaluacionBS : CommonBusiness
    {
        private DataAccess.TipoEvaluacion datTipoEvaluacion;
        protected string className;
        public TipoEvaluacionBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datTipoEvaluacion = new DataAccess.TipoEvaluacion();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datTipoEvaluacion.SelectAll();
            this.Result = this.datTipoEvaluacion.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

        //public DataTable Insert(int RutCompania, String DvCompania, String NomCompania, String GiroCompania, String DirCompania, String FonoCompania, int IdEstado)
        //{
        //    DataTable dt = null;
        //    try
        //    {
        //        dt = this.datEvaluacion.SelectRut(RutCompania);
        //        this.Result = this.datEvaluacion.Result;
        //        DateTime date = DateTime.Now;


        //        if (this.Result.HasError)
        //            return null;

        //        DataRow dr = dt.GetFirstRow();

        //        if (dr != null)
        //        {
        //            this.Result = Result.GetNewNo(string.Format("Ya existe una empresa con el Rut {0}", RutCompania));
        //            return  null;
        //        }

        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            dt = this.datEvaluacion.Insert(RutCompania, DvCompania, NomCompania, GiroCompania, DirCompania, FonoCompania, IdEstado);
        //            this.Result = this.datEvaluacion.Result;
        //            scope.Complete();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return null;
        //    }
        //    return dt;
        //}

        public DataTable Select(int IdTipoEvaluacion)
        {
            DataTable dt = this.datTipoEvaluacion.Select(IdTipoEvaluacion);
            this.Result = this.datTipoEvaluacion.Result;
            return dt;
        }

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
