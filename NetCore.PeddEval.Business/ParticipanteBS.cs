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
    public class ParticipanteBS : CommonBusiness
    {
        private DataAccess.Participante datParticipante;
        protected string className;
        public ParticipanteBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datParticipante = new DataAccess.Participante();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datParticipante.SelectAll();
            this.Result = this.datParticipante.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

        public string InsByAFun(int IdCabEvaluacion, int IdAreaFuncional)
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
                    cadena = this.datParticipante.InsByAFun(IdCabEvaluacion, IdAreaFuncional);
                    this.Result = this.datParticipante.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return "OK";
        }

        public string InsByCom(int IdCabEvaluacion, int IdCompania)
        {
            try
            {
                //dt = this.datCompania.SelectRut(RutCompania);
                //this.Result = this.datCompania.Result;
                //DateTime date = DateTime.Now;


                //if (this.Result.HasError)
                //    return null;

                //DataRow dr = dt.GetFirstRow();

                //if (dr != null)
                //{
                //    this.Result = Result.GetNewNo(string.Format("Ya existe una empresa con el Rut {0}", RutCompania));
                //    return null;
                //}

                using (TransactionScope scope = new TransactionScope())
                {
                    this.datParticipante.InsByCom(IdCabEvaluacion, IdCompania);
                    this.Result = this.datParticipante.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return "OK";
        }

        public string InsBySuc(int IdCabEvaluacion, int IdSucursal)
        {
            try
            {
                //dt = this.datCompania.SelectRut(RutCompania);
                //this.Result = this.datCompania.Result;
                //DateTime date = DateTime.Now;


                //if (this.Result.HasError)
                //    return null;

                //DataRow dr = dt.GetFirstRow();

                //if (dr != null)
                //{
                //    this.Result = Result.GetNewNo(string.Format("Ya existe una empresa con el Rut {0}", RutCompania));
                //    return null;
                //}

                using (TransactionScope scope = new TransactionScope())
                {
                    this.datParticipante.InsBySuc(IdCabEvaluacion, IdSucursal);
                    this.Result = this.datParticipante.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return "OK";
        }

        public string InsByDep(int IdCabEvaluacion, int IdDepartamento)
        {
            try
            {
                //dt = this.datCompania.SelectRut(RutCompania);
                //this.Result = this.datCompania.Result;
                //DateTime date = DateTime.Now;


                //if (this.Result.HasError)
                //    return null;

                //DataRow dr = dt.GetFirstRow();

                //if (dr != null)
                //{
                //    this.Result = Result.GetNewNo(string.Format("Ya existe una empresa con el Rut {0}", RutCompania));
                //    return null;
                //}

                using (TransactionScope scope = new TransactionScope())
                {
                    this.datParticipante.InsByDep(IdCabEvaluacion, IdDepartamento);
                    this.Result = this.datParticipante.Result;
                    scope.Complete();
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return "OK";
        }

        public DataTable Select(int IdParticipante)
        {
            DataTable dt = this.datParticipante.Select(IdParticipante);
            this.Result = this.datParticipante.Result;
            return dt;
        }

        public DataTable SelectByEval(int IdCabEvaluaciion)
        {
            DataTable dt = this.datParticipante.SelectByEval(IdCabEvaluaciion);
            this.Result = this.datParticipante.Result;
            return dt;
        }

        public DataTable SelectDistinct(int IdCabEvaluaciion, int IdEvaluador)
        {
            DataTable dt = this.datParticipante.SelectDist(IdCabEvaluaciion, IdEvaluador);
            this.Result = this.datParticipante.Result;
            return dt;
        }

    }
}
