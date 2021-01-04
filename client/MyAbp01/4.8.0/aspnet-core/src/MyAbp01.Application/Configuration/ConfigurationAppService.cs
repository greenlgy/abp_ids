using System.Threading.Tasks;
using Abp.Authorization;
using Abp.Runtime.Session;
using MyAbp01.Configuration.Dto;

namespace MyAbp01.Configuration
{
    [AbpAuthorize]
    public class ConfigurationAppService : MyAbp01AppServiceBase, IConfigurationAppService
    {
        public async Task ChangeUiTheme(ChangeUiThemeInput input)
        {
            await SettingManager.ChangeSettingForUserAsync(AbpSession.ToUserIdentifier(), AppSettingNames.UiTheme, input.Theme);
        }
    }
}
