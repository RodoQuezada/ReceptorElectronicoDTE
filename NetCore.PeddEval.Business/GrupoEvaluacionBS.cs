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
    public class GrupoEvaluacionBS : CommonBusiness
    {
        private DataAccess.GrupoEvaluacion datGrupoEvaluacion;
        protected string className;
        public GrupoEvaluacionBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datGrupoEvaluacion = new DataAccess.GrupoEvaluacion();
        }

        public DataTable SelectByJefe(int IdCabEvaluacion, int IdEvaluador)
        {
            DataTable dt = this.datGrupoEvaluacion.SelectByJefatura(IdCabEvaluacion, IdEvaluador);
            this.Result = this.datGrupoEvaluacion.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }


        public DataTable SellAll(int IdCabEvaluacion)
        {
            DataTable dt = this.datGrupoEvaluacion.SelectAll();
            this.Result = this.datGrupoEvaluacion.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }

        public string Insert(int IdCabEvaluacion,int IdEvaluador, int IdEvaluado, int IdEstado)
        {
            string cadena = "";
            try
            {
               
                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datGrupoEvaluacion.Insert(IdCabEvaluacion, IdEvaluador, IdEvaluado, IdEstado);
                    this.Result = this.datGrupoEvaluacion.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }
            return cadena;
        }

        public string Delete(int IdGrupoEvaluacin)
        {
            string cadena = "";
            try
            {

                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datGrupoEvaluacion.Delete(IdGrupoEvaluacin);
                    this.Result = this.datGrupoEvaluacion.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }
            return cadena;
        }

        //public DataTable Todos()
        //{
        //    DataTable dt = this.datEstado.SelectAll();
        //    this.Result = this.datEstado.Result;
        //    if (this.Result.HasError)
        //        return null;

        //    return dt;
        //}


        public DataTable Select(int IdGrupoEvaluacion)
        {
            DataTable dt = this.datGrupoEvaluacion.Select(IdGrupoEvaluacion);
            this.Result = this.datGrupoEvaluacion.Result;
            return dt;
        }

        public string Update(int IdGrupoEvaluacion, int IdCabEvaluacion, int IdEvaluador, int IdEvaluado, int IdEstado )
        {
            string cadena = "";
            try
            {

                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datGrupoEvaluacion.Edit(IdGrupoEvaluacion, IdCabEvaluacion, IdEvaluador, IdEvaluado, IdEstado);
                    this.Result = this.datGrupoEvaluacion.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
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
