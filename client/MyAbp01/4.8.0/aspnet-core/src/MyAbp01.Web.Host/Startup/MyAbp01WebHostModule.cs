using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Abp.Modules;
using Abp.Reflection.Extensions;
using MyAbp01.Configuration;

namespace MyAbp01.Web.Host.Startup
{
    [DependsOn(
       typeof(MyAbp01WebCoreModule))]
    public class MyAbp01WebHostModule: AbpModule
    {
        private readonly IHostingEnvironment _env;
        private readonly IConfigurationRoot _appConfiguration;

        public MyAbp01WebHostModule(IHostingEnvironment env)
        {
            _env = env;
            _appConfiguration = env.GetAppConfiguration();
        }

        public override void Initialize()
        {
            IocManager.RegisterAssemblyByConvention(typeof(MyAbp01WebHostModule).GetAssembly());
        }
    }
}
