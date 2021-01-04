using System.Threading.Tasks;
using MyAbp01.Configuration.Dto;

namespace MyAbp01.Configuration
{
    public interface IConfigurationAppService
    {
        Task ChangeUiTheme(ChangeUiThemeInput input);
    }
}
