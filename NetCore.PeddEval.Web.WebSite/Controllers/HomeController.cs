using System;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;


namespace NetCore.PeddEval.Web.WebSite.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        [Authorize(Roles = "core_home_blank")]
        public ActionResult Blank()
        {
            return View();
        }
        [Authorize(Roles = "core_home_elements")]
        public ActionResult Elements()
        {
            return View();
        }
        [Authorize(Roles = "core_home_tabs")]
        public ActionResult Tabs()
        {
            return View();
        }
        [Authorize(Roles = "core_home_modals")]
        public ActionResult Modals()
        {
            return View();
        }
        [Authorize(Roles = "core_home_buttons")]
        public ActionResult Buttons()
        {
            return View();
        }
        [Authorize(Roles = "core_home_formlayouts")]
        public ActionResult FormLayouts()
        {
            return View();
        }
        [Authorize(Roles = "core_home_formimputs")]
        public ActionResult FormInputs()
        {
            return View();
        }
        [Authorize(Roles = "core_home_widgets")]
        public ActionResult Widgets()
        {
            return View();
        }
        [Authorize(Roles = "core_home_databoxes")]
        public ActionResult Databoxes()
        {
            return View();
        }
        [Authorize(Roles = "core_home_alerts")]
        public ActionResult Alerts()
        {
            return View();
        }
        // [Authorize(Roles = "core_home_index")]
        //[AllowAnonymous]
        public ActionResult Index()
        {
            ViewBag.usuario = User.Identity.GetUserId();
            ViewBag.usuario = User.Identity.GetUserId();
            //return RedirectToAction("Index", "Dashboard", new { area = "PeddEval" });

            return View();
        }
        [Authorize(Roles = "core_home_fontawesome")]
        public ActionResult FontAwesome()
        {
            return View();
        }
        [Authorize(Roles = "core_home_glyphicons")]
        public ActionResult GlyphIcons()
        {
            return View();
        }
        [Authorize(Roles = "core_home_typicons")]
        public ActionResult Typicons()
        {
            return View();
        }
        [Authorize(Roles = "core_home_weathericons")]
        public ActionResult WeatherIcons()
        {
            return View();
        }
        [Authorize(Roles = "core_home_nestablelist")]
        public ActionResult NestableList()
        {
            return View();
        }
        [Authorize(Roles = "core_home_treeview")]
        public ActionResult TreeView()
        {
            return View();
        }
        [Authorize(Roles = "core_home_simpletables")]
        public ActionResult SimpleTables()
        {
            return View();
        }
        [Authorize(Roles = "core_home_datatables")]
        public ActionResult DataTables()
        {
            return View();
        }
        [Authorize(Roles = "core_home_datapickers")]
        public ActionResult DataPickers()
        {
            return View();
        }
        [Authorize(Roles = "core_home_wizards")]
        public ActionResult Wizards()
        {
            return View();
        }
        [Authorize(Roles = "core_home_formvalidation")]
        public ActionResult FormValidation()
        {
            return View();
        }
        [Authorize(Roles = "core_home_formimputmask")]
        public ActionResult FormInputMask()
        {
            return View();
        }
        [Authorize(Roles = "core_home_formeditors")]
        public ActionResult FormEditors()
        {
            return View();
        }
        [Authorize(Roles = "core_home_profile")]
        public ActionResult Profile()
        {
            return View();
        }
        [Authorize(Roles = "core_home_calendar")]
        public ActionResult Calendar()
        {
            return View();
        }
        [Authorize(Roles = "core_home_flotcharts")]
        public ActionResult FlotCharts()
        {
            return View();
        }
        [Authorize(Roles = "core_home_morrischarts")]
        public ActionResult MorrisCharts()
        {
            return View();
        }
        [Authorize(Roles = "core_home_sparklinecharts")]
        public ActionResult SparklineCharts()
        {
            return View();
        }
        [Authorize(Roles = "core_home_easypiecharts")]
        public ActionResult EasyPieCharts()
        {
            return View();
        }
        [Authorize(Roles = "core_home_charjs")]
        public ActionResult ChartJS()
        {
            return View();
        }
        [Authorize(Roles = "core_home_inbox")]
        public ActionResult Inbox()
        {
            return View();
        }
        [Authorize(Roles = "core_home_compose")]
        public ActionResult Compose()
        {
            return View();
        }
        [Authorize(Roles = "core_home_viewmessage")]
        public ActionResult ViewMessage()
        {
            return View();
        }
        [Authorize(Roles = "core_home_timeline")]
        public ActionResult Timeline()
        {
            return View();
        }
        [Authorize(Roles = "core_home_pricingtables")]
        public ActionResult PricingTables()
        {
            return View();
        }
        [Authorize(Roles = "core_home_invoice")]
        public ActionResult Invoice()
        {
            return View();
        }
        [Authorize(Roles = "core_home_typography")]
        public ActionResult Typography()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult Error404()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult Error500()
        {
            return View();
        }
        [Authorize(Roles = "core_home_grid")]
        public ActionResult Grid()
        {
            return View();
        }
        [Authorize(Roles = "core_home_persian")]
        public ActionResult Persian()
        {
            return View();
        }
        [Authorize(Roles = "core_home_arabic")]
        public ActionResult Arabic()
        {
            return View();
        }
    }
}
