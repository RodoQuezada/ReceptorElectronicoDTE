using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using System.Data;
using CoreLibrary;
using CoreLibrary.Business;
using Newtonsoft.Json;


namespace NetCore.PeddEval.Business
{
    public class FaseEvaluacionBS : CommonBusiness
    {
        private DataAccess.FaseEvaluacion datFaseEvaluacion;
        protected string className;
        public FaseEvaluacionBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datFaseEvaluacion = new DataAccess.FaseEvaluacion();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datFaseEvaluacion.SelectAll();
            this.Result = this.datFaseEvaluacion.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }


        public DataTable TodosActivos()
        {
            DataTable dt = this.datFaseEvaluacion.SelAllEvalAct();
            this.Result = this.datFaseEvaluacion.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }

        public string Insert(int IdCabEvaluacion, int IdTipoFase, string dfInicio, string dfTermino, int NumOrden, int IdEstado)
        {
            string cadena = null;
            try
            {
                //DataTable dt = this.datArea.SelectByName(Description);
                //this.Result = this.datArea.Result;
                //DateTime date = DateTime.Now;


                //if (this.Result.HasError)
                //    return null;

                //DataRow dr = dt.GetFirstRow();

                //if (dr != null)
                //{
                //    this.Result = Result.GetNewNo(string.Format("Ya existe una área con el nombre {0}", Description));
                //    return null;
                //}

                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datFaseEvaluacion.Insert(IdCabEvaluacion, IdTipoFase, dfInicio, dfTermino, NumOrden, IdEstado);
                    this.Result = this.datFaseEvaluacion.Result;
                    scope.Complete();
                }

                return "INSERTADO";
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
        }

        public DataTable Select(int IdFaseEvaluacion)
        {
            DataTable dt = this.datFaseEvaluacion.Select(IdFaseEvaluacion);
            this.Result = this.datFaseEvaluacion.Result;
            return dt;
        }

        public string Delete(int IdFaseEvaluacion)
        {
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    this.datFaseEvaluacion.Delete(IdFaseEvaluacion);
                    this.Result = this.datFaseEvaluacion.Result;
                    if (this.Result.HasError)
                        return "";
                    scope.Complete();

                    return "ELIMINADO";
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }
        }

        public string Update(int IdFaseEval, string dfInicio, string dfTermino, int IdEstado)
        {
            string cadena = "";
            try
            {

                using (TransactionScope scope = new TransactionScope())
                {
                    cadena = this.datFaseEvaluacion.Update(IdFaseEval, dfInicio, dfTermino, IdEstado);
                    this.Result = this.datFaseEvaluacion.Result;

                    if (this.Result.HasError)
                        return "";

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

        public DataTable JasonToDatatable(string json)
        {
            DataTable dtFases = JsonConvert.DeserializeObject<DataTable>(json);

            //DataTable dataTable = dataSet.Tables["Table1"];

            return dtFases;

        }
    }
}
