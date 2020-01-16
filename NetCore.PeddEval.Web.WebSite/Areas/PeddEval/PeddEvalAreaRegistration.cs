using System.Web.Mvc;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval
{
    public class PeddEvalAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "PeddEval";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "peddeval_default",
                "PeddEval/{controller}/{action}/{id}",
                new { controller = "Home", action = "Index", id = UrlParameter.Optional }
                //new { controller = "Ods",action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}