using System.Web.Mvc;

namespace NetCore.PeddEval.Web.WebSite.Areas.Administration
{
    public class AdministrationAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Administration";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Administration_default",
                "Administration/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "CoreLibrary.Web.WebSite.Areas.Administration.Controllers" }
            );
        }
    }
}