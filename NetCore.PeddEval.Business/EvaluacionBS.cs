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
    public class EvaluacionBS : CommonBusiness
    {
        private DataAccess.Evaluacion datEvaluacion;
        protected string className;
        public EvaluacionBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datEvaluacion = new DataAccess.Evaluacion();
        }
        public DataTable SelectReglas(int IdUsuario, int IdEmpresa, int IdSucursal, int IdArea, int IdProveedor)
        {
            DataTable dt = this.datEvaluacion.SelectAll(IdUsuario, IdEmpresa, IdSucursal, IdArea, IdProveedor);
            this.Result = this.datEvaluacion.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

        //public DataTable SelbyAct()
        //{
        //    DataTable dt = this.datEvaluacion.SelectByAct();
        //    this.Result = this.datEvaluacion.Result;
        //    if (this.Result.HasError)
        //        return null;

        //    return dt;
        //}

        //public DataTable SelectByEmpleado(int IdEmpleado, int IdCompania)
        //{
        //    DataTable dt = this.datEvaluacion.SelectByEmpleado(IdEmpleado, IdCompania);
        //    this.Result = this.datEvaluacion.Result;
        //    if (this.Result.HasError)
        //        return null;

        //    return dt;
        //}

        //public DataTable SelectByJefatura(int IdJefatura, int IdCompania)
        //{
        //    DataTable dt = this.datEvaluacion.SelectByJefatura(IdJefatura, IdCompania);
        //    this.Result = this.datEvaluacion.Result;
        //    if (this.Result.HasError)
        //        return null;

        //    return dt;
        //}

        //public DataTable Insert(int IdCompania, string NomEvaluacion, string DesEvaluacion, string InsEvaluacion, string dfInicio, string dfTermino, int IdTipoEvaluacion, int IdEstado)
        //{
        //    DataTable dt = null;
        //    try
        //    {
        //        dt = this.datEvaluacion.SelectByNom(IdCompania,NomEvaluacion);
        //        this.Result = this.datEvaluacion.Result;
        //        DateTime date = DateTime.Now;


        //        if (this.Result.HasError)
        //            return null;

        //        DataRow dr = dt.GetFirstRow();

        //        if (dr != null)
        //        {
        //            this.Result = Result.GetNewNo(string.Format("Ya existe una evaluaion con el Nombre {0}", NomEvaluacion));
        //            return null;
        //        }

        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            dt = this.datEvaluacion.Insert(IdCompania, NomEvaluacion, DesEvaluacion, InsEvaluacion, dfInicio, dfTermino, IdTipoEvaluacion, IdEstado);
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

        //public DataTable Select(int IdCabEvaluacion)
        //{
        //    DataTable dt = this.datEvaluacion.Select(IdCabEvaluacion);
        //    this.Result = this.datEvaluacion.Result;
        //    return dt;
        //}

        //public string Edit(int IdCabEvaluacion, int IdCompania, string NomEvaluacion, string DesEvaluacion, string InsEvaluacion, string dfInicio, string dfTermino, int IdTipoEvaluacion, int IdCompSucAreDep, int IdEstado)
        //{
        //    string cadena = null;
        //    try
        //    {

        //        //using (TransactionScope scope = new TransactionScope())
        //        //{
        //            this.datEvaluacion.Edit(IdCabEvaluacion,IdCompania, NomEvaluacion, DesEvaluacion, InsEvaluacion, dfInicio, dfTermino, IdTipoEvaluacion, IdCompSucAreDep, IdEstado);
        //            this.Result = this.datEvaluacion.Result;
        //        //    scope.Complete();
        //        //}
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return "";
        //    }

        //    return "ACTUALIZADO";
        //}

        //public string Delete(int IdCabEvaluacion)
        //{
        //    try
        //    {
        //        using (TransactionScope scope = new TransactionScope())
        //        {
        //            this.datEvaluacion.Delete(IdCabEvaluacion);
        //            this.Result = this.datEvaluacion.Result;
        //            if (this.Result.HasError)
        //                return "";
        //            scope.Complete();

        //            return "ELIMINADO";
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return "";
        //    }
        //}
    }
}
