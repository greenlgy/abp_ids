using Abp.AspNetCore.Mvc.ViewComponents;

namespace MyAbp01.Web.Views
{
    public abstract class MyAbp01ViewComponent : AbpViewComponent
    {
        protected MyAbp01ViewComponent()
        {
            LocalizationSourceName = MyAbp01Consts.LocalizationSourceName;
        }
    }
}
