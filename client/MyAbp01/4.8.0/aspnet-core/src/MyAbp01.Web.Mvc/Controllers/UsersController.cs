using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Abp.Application.Services.Dto;
using Abp.AspNetCore.Mvc.Authorization;
using MyAbp01.Authorization;
using MyAbp01.Controllers;
using MyAbp01.Users;
using MyAbp01.Web.Models.Users;
using MyAbp01.Users.Dto;
using Microsoft.AspNetCore.Authorization;

namespace MyAbp01.Web.Controllers
{
    // [Authorize]
    // [AbpMvcAuthorize(PermissionNames.Pages_Users)]
    // [AbpMvcAuthorize(Roles="Admin")]
    [Authorize(Roles = "Admin")]
    public class UsersController : MyAbp01ControllerBase
    {
        private readonly IUserAppService _userAppService;

        public UsersController(IUserAppService userAppService)
        {
            _userAppService = userAppService;
        }

        public async Task<ActionResult> Index()
        {
            var users = (await _userAppService.GetAll(new PagedUserResultRequestDto {MaxResultCount = int.MaxValue})).Items; // Paging not implemented yet
            var roles = (await _userAppService.GetRoles()).Items;
            var model = new UserListViewModel
            {
                Users = users,
                Roles = roles
            };
            return View(model);
        }

        public async Task<ActionResult> EditUserModal(long userId)
        {
            var user = await _userAppService.Get(new EntityDto<long>(userId));
            var roles = (await _userAppService.GetRoles()).Items;
            var model = new EditUserModalViewModel
            {
                User = user,
                Roles = roles
            };
            return View("_EditUserModal", model);
        }
    }
}
