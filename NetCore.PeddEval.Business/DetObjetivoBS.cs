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
    public class DetObjetivoBS : CommonBusiness
    {
        private DataAccess.DetObjetivo datDetObjetivo;
        protected string className;
        public DetObjetivoBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datDetObjetivo = new DataAccess.DetObjetivo();
        }


        public DataTable Insert(int IdObjetivoEvaluacion, string NomOjetivo, string DesOjetivo, string MetEsperada, string MetExcepcional, int PondObjetivo, int IdEstado)
        {
            DataTable dt;
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    dt = this.datDetObjetivo.Insert(IdObjetivoEvaluacion, NomOjetivo, DesOjetivo, MetEsperada,  MetExcepcional, PondObjetivo, IdEstado);
                    this.Result = this.datDetObjetivo.Result;
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

        public DataTable SelByEvalEmp(int IdCabEvaluacion, int IdEvaluado)
        {
            DataTable dt = this.datDetObjetivo.SelectByEvalEmp(IdCabEvaluacion, IdEvaluado);
            this.Result = this.datDetObjetivo.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }

        //public DataTable Todos()
        //{
        //    DataTable dt = this.datEstado.SelectAll();
        //    this.Result = this.datEstado.Result;
        //    if (this.Result.HasError)
        //        return null;

        //    return dt;
        //}


        //public DataTable Select(int Id)
        //{
        //    DataTable dt = this.datArea.Select(Id);
        //    this.Result = this.datArea.Result;
        //    return dt;
        //}

        public string UpdateNota(int IdDetObjetivo, int NotaObjetivo)
        {
            string cadena = null;
            try
            {
               
                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datDetObjetivo.UpdNota(IdDetObjetivo, NotaObjetivo);
                    this.Result = this.datDetObjetivo.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return cadena;
        }

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
