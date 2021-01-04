using System.ComponentModel.DataAnnotations;

namespace MyAbp01.Users.Dto
{
    public class ChangeUserLanguageDto
    {
        [Required]
        public string LanguageName { get; set; }
    }
}