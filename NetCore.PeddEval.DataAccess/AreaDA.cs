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
    public class AreaDA : CommonDataAccess
    {
        private const string spInsert = "sp_maestros_areas_empresa_insert";
        private const string spSelect = "sp_maestros_areas_empresa_selectAll";
        private const string spSelectByEmpSuc = "sp_eval_area_select";
        protected string className;

        public AreaDA()
            : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
        }

        public DataTable SelectAreabyEmpresaAll(int empresa_id)
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
                            cmd = db.GetStoredProcCommand(spSelect
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


        public DataTable SelectAreabyEmpresaSuc(int IdEmpresa, int IdSucursal,int IdArea, int IdUsuario)
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
                            cmd = db.GetStoredProcCommand(spSelectByEmpSuc
                               , IdUsuario,  IdEmpresa,  IdSucursal,  IdArea );
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


        public String Insert(string codArea, string rutEmpresa, string nombre, string descripcion, int auditNoEliminar, DateTime auditFechaCreacion, DateTime auditUltimaFechaActualiza, string auditUsuarioActualiza)
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
                              codArea,
                              rutEmpresa,
                              nombre,
                              descripcion,
                              auditNoEliminar,
                              auditFechaCreacion,
                              auditUltimaFechaActualiza,
                              auditUsuarioActualiza
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

    }
}
