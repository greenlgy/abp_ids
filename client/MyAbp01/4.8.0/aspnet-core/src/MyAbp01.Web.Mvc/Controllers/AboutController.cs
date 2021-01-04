using Microsoft.AspNetCore.Mvc;
using Abp.AspNetCore.Mvc.Authorization;
using MyAbp01.Controllers;

namespace MyAbp01.Web.Controllers
{
    [AbpMvcAuthorize]
    public class AboutController : MyAbp01ControllerBase
    {
        public ActionResult Index()
        {
            return View();
        }
	}
}
