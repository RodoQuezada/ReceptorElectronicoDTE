using System.Web.Mvc;

namespace NetCore.PeddEval.Web.WebSite.Areas.ReceptorDTE
{

    public class ReceptorDTERegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "ReceptorDTE";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                 "receptorDTE_default",
                 "ReceptorDTE/{controller}/{action}/{id}",
                 new { controller = "Home", action = "Index", id = UrlParameter.Optional }
             //new { controller = "Ods",action = "Index", id = UrlParameter.Optional }
             );
        }
    }




}

