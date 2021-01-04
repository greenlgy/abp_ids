using Microsoft.AspNetCore.Mvc.Razor.Internal;
using Abp.AspNetCore.Mvc.Views;
using Abp.Runtime.Session;

namespace MyAbp01.Web.Views
{
    public abstract class MyAbp01RazorPage<TModel> : AbpRazorPage<TModel>
    {
        [RazorInject]
        public IAbpSession AbpSession { get; set; }

        protected MyAbp01RazorPage()
        {
            LocalizationSourceName = MyAbp01Consts.LocalizationSourceName;
        }
    }
}
