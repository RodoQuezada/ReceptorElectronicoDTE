using System.Web;
using System.Web.Mvc;

namespace NetCore.PeddEval.Web.WebSite
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
