using Abp.Application.Services;
using Abp.Application.Services.Dto;
using MyAbp01.MultiTenancy.Dto;

namespace MyAbp01.MultiTenancy
{
    public interface ITenantAppService : IAsyncCrudAppService<TenantDto, int, PagedTenantResultRequestDto, CreateTenantDto, TenantDto>
    {
    }
}

