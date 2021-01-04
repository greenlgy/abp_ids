using System.Threading.Tasks;
using Abp.Application.Services;
using MyAbp01.Sessions.Dto;

namespace MyAbp01.Sessions
{
    public interface ISessionAppService : IApplicationService
    {
        Task<GetCurrentLoginInformationsOutput> GetCurrentLoginInformations();
    }
}
