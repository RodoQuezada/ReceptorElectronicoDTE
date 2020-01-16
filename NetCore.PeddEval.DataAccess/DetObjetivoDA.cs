using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;
using System.Data;
using CoreLibrary;
using NetCore.PeddEval;
using NetCore.PeddEval.DataAccess;

namespace NetCore.PeddEval.DataAccess
{
    public class DetObjetivo : CommonDataAccess
    {
        private const string tbName = "tbPeddDetObjetivoEvaluacion";
        private const string spSelAll = "";
        private const string spDelete = "";
        private const string spInsert = "spPeddDetObjetivoEvaluacion_Insert";
        private const string spSelect = "";
        private const string spUpdate = "";
        private const string spSearch = "";
        private const string spSelByEvalEmp = "SpPeddDetObjetivoEvaluacion_SelByEvalEmp";
        private const string spUpdNota = "spPeddDetObjetivoEvaluacion_UpdNota";

        protected string className;

        public DetObjetivo()
            : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
        }

        public DataTable Insert(int IdObjetivoEvaluacion, string NomOjetivo, string DesOjetivo, string MetEsperada, string MetExcepcional, int PondObjetivo, int IdEstado)
        {
            DataTable dt = null;
            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        IDataReader dr;

                        cmd = db.GetStoredProcCommand(spInsert,
                              IdObjetivoEvaluacion,
                              NomOjetivo,
                              DesOjetivo,
                              MetEsperada,
                              MetExcepcional,
                              PondObjetivo,
                              IdEstado
                            );

                        try
                        {
                            dr = db.ExecuteReader(cmd);
                            this.Result = Result.GetNewOK(this.className);
                        }
                        catch (Exception ex)
                        {
                            this.Result = Result.GetNewError(ex, this.className);
                            return null;
                        }

                        dt = new DataTable();
                        dt.Load(dr);
                        dr.Close();
                        this.Result = Result.GetNewOK(this.className);

                    }
                    catch (Exception ex)
                    {
                        this.Result = Result.GetNewError(ex, this.className);
                        return null;
                    }
                    finally
                    { }
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return dt;
        }

        public DataTable SelectByEvalEmp(int IdCabEvaluacion, int IdEvaluado)
        {
            DataTable dt = null;
            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        IDataReader dr;

                        try
                        {
                            cmd = db.GetStoredProcCommand(spSelByEvalEmp, IdCabEvaluacion, IdEvaluado);
                            dr = db.ExecuteReader(cmd);
                        }
                        catch (Exception ex)
                        {
                            this.Result = Result.GetNewError(ex, this.className);
                            return null;
                        }

                        dt = new DataTable();
                        dt.Load(dr);
                        dr.Close();
                        this.Result = Result.GetNewOK(this.className);
                    }
                    catch (Exception ex)
                    {
                        this.Result = Result.GetNewError(ex, this.className);
                        return null;
                    }
                    finally
                    { }
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return dt;
        }


        //public DataTable SelectByName(string name)
        //{
        //    DataTable dt = null;
        //    try
        //    {
        //        using (DbConnection conn = db.CreateConnection())
        //        {
        //            try
        //            {
        //                conn.Open();
        //                DbCommand cmd;
        //                IDataReader dr;

        //                try
        //                {
        //                    cmd = db.GetStoredProcCommand(spSearch, name, DBNull.Value, DBNull.Value, DBNull.Value);
        //                    dr = db.ExecuteReader(cmd);
        //                }
        //                catch (Exception ex)
        //                {
        //                    this.Result = Result.GetNewError(ex, this.className);
        //                    return null;
        //                }

        //                dt = new DataTable();
        //                dt.Load(dr);
        //                dr.Close();
        //                this.Result = Result.GetNewOK(this.className);
        //            }
        //            catch (Exception ex)
        //            {
        //                this.Result = Result.GetNewError(ex, this.className);
        //                return null;
        //            }
        //            finally
        //            { }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return null;
        //    }
        //    return dt;
        //}

        //public DataTable Select(int Id)
        //{
        //    DataTable dt = null;
        //    try
        //    {
        //        using (DbConnection conn = db.CreateConnection())
        //        {
        //            try
        //            {
        //                conn.Open();
        //                DbCommand cmd;
        //                IDataReader dr;

        //                try
        //                {
        //                    cmd = db.GetStoredProcCommand(spSelect, Id);
        //                    dr = db.ExecuteReader(cmd);
        //                }
        //                catch (Exception ex)
        //                {
        //                    this.Result = Result.GetNewError(ex, this.className);
        //                    return null;
        //                }

        //                dt = new DataTable();
        //                dt.Load(dr);
        //                dr.Close();
        //                this.Result = Result.GetNewOK(this.className);
        //            }
        //            catch (Exception ex)
        //            {
        //                this.Result = Result.GetNewError(ex, this.className);
        //                return null;
        //            }
        //            finally
        //            { }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return null;
        //    }
        //    return dt;
        //}

        public String UpdNota(int IdDetalleObjetivo, int NotaObjetivo)
        {

            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        cmd = db.GetStoredProcCommand(spUpdNota, IdDetalleObjetivo, NotaObjetivo);
                        try
                        {
                            db.ExecuteNonQuery(cmd);
                            this.Result = Result.GetNewOK(this.className);
                        }
                        catch (Exception ex)
                        {
                            this.Result = Result.GetNewError(ex, this.className);
                            return "";
                        }
                    }
                    catch (Exception ex)
                    {
                        this.Result = Result.GetNewError(ex, this.className);
                        return "";
                    }
                    finally
                    { }
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }

            return "GRABADO";


        }

        //public void DeleteArea(string AreaId)
        //{
        //    try
        //    {
        //        using (DbConnection conn = db.CreateConnection())
        //        {
        //            try
        //            {
        //                conn.Open();
        //                DbCommand cmd;

        //                try
        //                {
        //                    cmd = db.GetStoredProcCommand(spDelete,
        //                          AreaId,
        //                          DBNull.Value
        //                        );
        //                    db.ExecuteNonQuery(cmd);
        //                    this.Result = Result.GetNewOK(this.className);
        //                }
        //                catch (Exception ex)
        //                {
        //                    this.Result = Result.GetNewError(ex, this.className);
        //                    return;
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                this.Result = Result.GetNewError(ex, this.className);
        //                return;
        //            }
        //            finally
        //            { }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        this.Result = Result.GetNewError(ex, this.className);
        //        return;
        //    }
        //}

    }

}
