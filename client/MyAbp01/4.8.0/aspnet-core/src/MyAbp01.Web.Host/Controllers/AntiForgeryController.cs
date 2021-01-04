using Microsoft.AspNetCore.Antiforgery;
using MyAbp01.Controllers;

namespace MyAbp01.Web.Host.Controllers
{
    public class AntiForgeryController : MyAbp01ControllerBase
    {
        private readonly IAntiforgery _antiforgery;

        public AntiForgeryController(IAntiforgery antiforgery)
        {
            _antiforgery = antiforgery;
        }

        public void GetToken()
        {
            _antiforgery.SetCookieTokenAndHeader(HttpContext);
        }
    }
}
