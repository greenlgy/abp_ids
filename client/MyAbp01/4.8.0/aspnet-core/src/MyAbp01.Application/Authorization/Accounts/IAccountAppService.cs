using System.Threading.Tasks;
using Abp.Application.Services;
using MyAbp01.Authorization.Accounts.Dto;

namespace MyAbp01.Authorization.Accounts
{
    public interface IAccountAppService : IApplicationService
    {
        Task<IsTenantAvailableOutput> IsTenantAvailable(IsTenantAvailableInput input);

        Task<RegisterOutput> Register(RegisterInput input);
    }
}
