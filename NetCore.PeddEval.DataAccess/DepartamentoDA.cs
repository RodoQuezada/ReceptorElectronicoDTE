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
    public class Departamento : CommonDataAccess
    {
        private const string tbName = "tbPeddDepartamento";
        private const string spSelAll = "spPeddDepartamento_SelAll";
        private const string spDelete = "spPeddDepartamento_Delete";
        private const string spInsert = "spPeddDepartamento_Insert";
        private const string spSelect = "spPeddDepartamento_Select";
        private const string spUpdate = "spPeddDepartamento_Update";
        private const string spExists = "spPeddDepartamento_Exists";

        protected string className;

        public Departamento()
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

        //public String Insert(string description, string webIcon, string webClass, bool activo, string UserRecord, DateTime createdRecord, DateTime? UpdatedRecord, string LastUserRecord)
        //{

        //    try
        //    {
        //        using (DbConnection conn = db.CreateConnection())
        //        {
        //            try
        //            {
        //                conn.Open();
        //                DbCommand cmd;
        //                cmd = db.GetStoredProcCommand(spInsert,
        //                      description,
        //                      webIcon,
        //                      webClass,
        //                      activo,
        //                      createdRecord,
        //                      UserRecord,
        //                      UpdatedRecord,
        //                      LastUserRecord,
        //                      DBNull.Value
        //                    );
        //                try
        //                {
        //                    db.ExecuteNonQuery(cmd);
        //                    this.Result = Result.GetNewOK(this.className);
        //                }
        //                catch (Exception ex)
        //                {
        //                    this.Result = Result.GetNewError(ex, this.className);
        //                    return null;
        //                }
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
        //    return "";


        //}

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

        public DataTable Select(int IdDepartamento)
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
                            cmd = db.GetStoredProcCommand(spSelect, IdDepartamento);
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
  
    }

}
