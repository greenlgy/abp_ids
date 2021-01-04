using Microsoft.AspNetCore.Mvc;
using Abp.AspNetCore.Mvc.Authorization;
using MyAbp01.Controllers;
using Microsoft.AspNetCore.Authorization;
using MyAbp01.Authorization;

namespace MyAbp01.Web.Controllers
{
    [AbpMvcAuthorize]
    // [Authorize]
    // [Authorize(Roles = "Admin")]
    public class HomeController : MyAbp01ControllerBase
    {
        public ActionResult Index()
        {
            return View();
        }
	}
}
