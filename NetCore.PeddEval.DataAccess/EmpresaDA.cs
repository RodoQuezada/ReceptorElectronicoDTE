using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using CoreLibrary;

namespace NetCore.PeddEval.DataAccess
{
    //@uthor: Rodolfo Quezada

    public class EmpresaDA : CommonDataAccess
    {


        //variables de SP
        private string spEmpresaInsert = "sp_maestros_empresa_insert";
        private string spEmpresaSelectAll = "sp_maestros_empresa_selectAll";
        private string spEmpresaSelectById = "sp_eval_empresas_select";
        protected string className;

        public EmpresaDA()
            : base()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
        }

        public DataTable InsertEmpresa(Dictionary<string, string> data)
        {
            object[] parameters = new[] { data["id"], data["rut"], data["nombre"], data["descripcion"], data["auditFechaCreacion"], data["auditUltimaFechaActualiza"],
                data["auditUsuarioActualiza"]};
            return ProcedureCall(spEmpresaInsert, parameters);
        }

        public DataTable GetAllEmpresas()
        {
            string vacio = "";
            object[] parameters = new[] { vacio };
            return ProcedureCall(spEmpresaSelectAll, parameters);
        }

        public DataTable SelectByIdEmpresa(int IdEmpresa, int IdUsuario)
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
                            cmd = db.GetStoredProcCommand(spEmpresaSelectById
                                , IdUsuario, IdEmpresa);
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


        private DataTable ProcedureCall(string procedure, object[] parameters)
        {
            DataTable dt;
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
                            // error al cambio de paramtros
                            cmd = db.GetStoredProcCommand(procedure, parameters);
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
                }
            }
            catch (Exception ex)
            {
                this.Result = Result.GetNewError(ex, this.className);
                return null;
            }
            return dt;
        }

     
    }

}
