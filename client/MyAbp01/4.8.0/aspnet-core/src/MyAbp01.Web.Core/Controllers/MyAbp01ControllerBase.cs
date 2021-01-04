using Abp.AspNetCore.Mvc.Controllers;
using Abp.IdentityFramework;
using Microsoft.AspNetCore.Identity;

namespace MyAbp01.Controllers
{
    public abstract class MyAbp01ControllerBase: AbpController
    {
        protected MyAbp01ControllerBase()
        {
            LocalizationSourceName = MyAbp01Consts.LocalizationSourceName;
        }

        protected void CheckErrors(IdentityResult identityResult)
        {
            identityResult.CheckErrors(LocalizationManager);
        }
    }
}
