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
    public class FaseEvaluacion : CommonDataAccess
    {
        private const string tbName = "tbPeddFaseEvaluacion";
        private const string spSelAll = "spPeddFaseEvaluacion_SelAll";
        private const string spDelete = "spPeddFaseEvaluacion_Delete";
        private const string spInsert = "spPeddFaseEvaluacion_Insert";
        private const string spSelect = "spPeddFaseEvaluacion_Select";
        private const string spUpdate = "spPeddFaseEvaluacion_Update";
        private const string spSearch = "";
        private const string spSelEvalAct = "spPeddFaseEvaluacion_SelByEvalAct";

        protected string className;

        public FaseEvaluacion()
            : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
        }

        public DataTable SelectAll()
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
                            cmd = db.GetStoredProcCommand(spSelAll
                                );
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

        public DataTable SelAllEvalAct()
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
                            cmd = db.GetStoredProcCommand(spSelEvalAct);
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


        public String Insert(int IdCabEvaluacion, int IdTipoFase, string dfInicio, string dfTermino, int NumOrden, int IdEstado)
        {

            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        cmd = db.GetStoredProcCommand(spInsert,
                              IdCabEvaluacion,
                              IdTipoFase,
                              dfInicio,
                              dfTermino,
                              NumOrden,
                              IdEstado
                            );
                        try
                        {
                            db.ExecuteNonQuery(cmd);
                            this.Result = Result.GetNewOK(this.className);
                        }
                        catch (Exception ex)
                        {
                            this.Result = Result.GetNewError(ex, this.className);
                            return null;
                        }
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
            return "";
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

        public DataTable Select(int Id)
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
                            cmd = db.GetStoredProcCommand(spSelect, Id);
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

        public String Update( int IdFaseEval, string dfInicio, string dfTermino, int IdEstado)
        {

            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        cmd = db.GetStoredProcCommand(spUpdate, IdFaseEval, dfInicio, dfTermino, IdEstado );
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

                    return "ACTUALIZADO";
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }
        }

        public string Delete(int IdFaseEval)
        {
            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;

                        try
                        {
                            cmd = db.GetStoredProcCommand(spDelete, IdFaseEval);
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

                    return "ELIMNADO";

                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return "";
            }
        }

    }

}
