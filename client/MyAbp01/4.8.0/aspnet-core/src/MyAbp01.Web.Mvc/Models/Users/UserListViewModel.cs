using System.Collections.Generic;
using MyAbp01.Roles.Dto;
using MyAbp01.Users.Dto;

namespace MyAbp01.Web.Models.Users
{
    public class UserListViewModel
    {
        public IReadOnlyList<UserDto> Users { get; set; }

        public IReadOnlyList<RoleDto> Roles { get; set; }
    }
}
