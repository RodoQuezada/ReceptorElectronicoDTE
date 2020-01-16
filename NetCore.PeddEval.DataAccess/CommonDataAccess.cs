using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CoreLibrary;

namespace NetCore.PeddEval.DataAccess
{
    public class CommonDataAccess : CoreLibrary.DataAccess.CommonDataAccess
    {
        public CommonDataAccess(string connectionName = "MaestroConnection")
            : base(connectionName)
        {

        }
    }

    //public CommonDataAccess(string connectionName = "PeddEvalConnection")
}
