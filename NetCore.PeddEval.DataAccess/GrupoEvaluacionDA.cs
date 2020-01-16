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
    public class GrupoEvaluacion : CommonDataAccess
    {
        private const string tbName = "tbPeddGrupoEvaluacion";
        private const string spSelAll = "spPeddGrupoEvaluacion_SelAll";
        private const string spDelete = "spPeddGrupoEvaluacion_Delete";
        private const string spInsert = "spPeddGrupoEvaluacion_Insert";
        private const string spSelect = "spPeddGrupoEvaluacion_Select";
        private const string spUpdate = "spPeddGrupoEvaluacion_Update";
        private const string spExists = "spPeddGrupoEvaluacion_Exists";
        private const string spSelByJef = "spPeddGrupoEvaluacion_SelByJefe";

        protected string className;

        public GrupoEvaluacion() : base()
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
                            cmd = db.GetStoredProcCommand(spSelAll);
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

        public DataTable SelectByJefatura(int IdCabEvaluacion, int IdJefatura)
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
                            cmd = db.GetStoredProcCommand(spSelByJef, IdCabEvaluacion, IdJefatura);
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


        public string Insert(int IdCabEvaluacion, int IdEvaluador, int IdEmpleado,int IdEstado)
        {
            DataTable dt = null;
            string cadena = "";

            try
            {
                using (DbConnection conn = db.CreateConnection())
                {
                    try
                    {
                        conn.Open();
                        DbCommand cmd;
                        cmd = db.GetStoredProcCommand(spInsert, IdCabEvaluacion, IdEvaluador, IdEmpleado,  IdEstado );
                        try
                        {
                            //db.ExecuteNonQuery(cmd);
                            IDataReader dr;

                            dr = db.ExecuteReader(cmd);
                            dt = new DataTable();
                            dt.Load(dr);
                            dr.Close();
                            this.Result = Result.GetNewOK(this.className);
                            cadena = "GRABADD";

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

            return cadena;
        }

 

        public DataTable Select(int IdGrupoEvaluacion)
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
                            cmd = db.GetStoredProcCommand(spSelect, IdGrupoEvaluacion);
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

        public String Edit(int IdGrupoEvaluacion, int IdCabEvaluacion, int IdEvaluador, int IdEmpleado, int IdEstado)
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
                              IdGrupoEvaluacion,
                              IdCabEvaluacion,
                              IdEvaluador,
                              IdEmpleado,
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

        public string Delete(int IdGrupoEvaluacion)
        {
            string cadena = "";

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
                            cmd = db.GetStoredProcCommand(spDelete, IdGrupoEvaluacion);
                            db.ExecuteNonQuery(cmd);
                            this.Result = Result.GetNewOK(this.className);
                            cadena = "ELIMINADO";
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

            return cadena;
        }

    }

}
