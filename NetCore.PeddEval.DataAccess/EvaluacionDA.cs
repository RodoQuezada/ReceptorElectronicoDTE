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
    public class Evaluacion : CommonDataAccess
    {
        private const string tbName = "tbPeddCabEvaluacion";
        private const string spSelAll = "spPeddCabEvaluacion_SelAll";
        private const string spDelete = "spPeddCabEvaluacion_Delete";
        private const string spInsert = "spPeddCabEvaluacion_Insert";
        private const string spSelect = "spPeddCabEvaluacion_Select";
        private const string SpSelByNom = "spPeddCabEvaluacion_SelByNom";
        private const string spUpdate = "spPeddCabEvaluacion_Update";
        private const string spSelByAct = "spPeddCabEvaluacion_SelByAct";
        private const string spSelByEmp = "SpPeddEvaluacionActiva_SelByEmp";
        private const string spSelByJef = "SpPeddEvaluacionActiva_SelByJef";

        protected string className;

        public Evaluacion() : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
        }

        public DataTable SelectAll(int IdCompania)
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
                            cmd = db.GetStoredProcCommand(spSelAll, IdCompania );
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

        public DataTable SelectByJefatura(int IdJefatura, int IdCompania)
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
                            cmd = db.GetStoredProcCommand(spSelByJef, IdJefatura, IdCompania);
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

        public DataTable SelectByEmpleado(int IdEmpleado, int IdCompania)
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
                            cmd = db.GetStoredProcCommand(spSelByEmp, IdEmpleado , IdCompania);
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

        public DataTable SelectByAct()
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
                            cmd = db.GetStoredProcCommand(spSelByAct);
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

        public DataTable Insert(int IdCompania,string NomEvaluacion,string DesEvaluacion,string InsEvaluacion,string dfInicio,string dfTermino,int IdTipoEvaluacion,int IdEstado)
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
                        cmd = db.GetStoredProcCommand(spInsert,
                              IdCompania,
                              NomEvaluacion,
                              DesEvaluacion,
                              InsEvaluacion,
                              dfInicio,
                              dfTermino,
                              IdTipoEvaluacion,
                              IdEstado
                            );
                        try
                        {
                            //db.ExecuteNonQuery(cmd);
                            IDataReader dr;

                            dr = db.ExecuteReader(cmd);
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

        public DataTable SelectByNom(int IdCompania, string NomEvaluacion)
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
                            cmd = db.GetStoredProcCommand(SpSelByNom, IdCompania, NomEvaluacion);
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

        public DataTable Select(int IdCabEvaluacion)
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
                            cmd = db.GetStoredProcCommand(spSelect, IdCabEvaluacion);
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

        public String Edit(int IdCabEvaluacion,int IdCompania, string NomEvaluacion, string DesEvaluacion, string InsEvaluacion, string dfInicio, string dfTermino, int IdTipoEvaluacion, int IdCompSucAreDep, int IdEstado)
        {

            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        cmd = db.GetStoredProcCommand(spUpdate,
                              IdCabEvaluacion,
                              IdCompania,
                              NomEvaluacion,
                              DesEvaluacion,
                              InsEvaluacion,
                              dfInicio,
                              dfTermino,
                              IdTipoEvaluacion,
                              IdCompSucAreDep,
                              IdEstado
                            );
                        try
                        {
                            db.ExecuteNonQuery(cmd);
                            this.Result = Result.GetNewOK(this.className);
                            return "ACTUALIZADO";
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

        }

        public string Delete(int IdCabEvaluacion)
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
                            cmd = db.GetStoredProcCommand(spDelete, IdCabEvaluacion);
                            db.ExecuteNonQuery(cmd);
                            this.Result = Result.GetNewOK(this.className);
                            return "ELIMINADO";
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
        }

    }

}
