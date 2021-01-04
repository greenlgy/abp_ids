using Microsoft.AspNetCore.Mvc;
using Abp.AspNetCore.Mvc.Authorization;
using MyAbp01.Controllers;
using Microsoft.AspNetCore.Authorization;

namespace MyAbp01.Web.Controllers
{
    [Authorize (Roles="Admin")]
    //[Authorize]
    //[AbpMvcAuthorize]
    public class IndexController : MyAbp01ControllerBase
    {
        public ActionResult Index()
        {
            return View();
        }
	}
}
