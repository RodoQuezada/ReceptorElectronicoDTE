using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(NetCore.PeddEval.Web.WebSite.Startup))]
namespace NetCore.PeddEval.Web.WebSite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
