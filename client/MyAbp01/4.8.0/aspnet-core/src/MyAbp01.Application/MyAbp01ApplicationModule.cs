using Abp.AutoMapper;
using Abp.Modules;
using Abp.Reflection.Extensions;
using MyAbp01.Authorization;

namespace MyAbp01
{
    [DependsOn(
        typeof(MyAbp01CoreModule), 
        typeof(AbpAutoMapperModule))]
    public class MyAbp01ApplicationModule : AbpModule
    {
        public override void PreInitialize()
        {
            Configuration.Authorization.Providers.Add<MyAbp01AuthorizationProvider>();
        }

        public override void Initialize()
        {
            var thisAssembly = typeof(MyAbp01ApplicationModule).GetAssembly();

            IocManager.RegisterAssemblyByConvention(thisAssembly);

            Configuration.Modules.AbpAutoMapper().Configurators.Add(
                // Scan the assembly for classes which inherit from AutoMapper.Profile
                cfg => cfg.AddMaps(thisAssembly)
            );
        }
    }
}
