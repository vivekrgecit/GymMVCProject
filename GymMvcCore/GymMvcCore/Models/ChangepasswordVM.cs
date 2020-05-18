using System.ComponentModel.DataAnnotations;

namespace GymMvcCore.Models
{
    public class ChangepasswordVM
    {
        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New Password")]

        public string Newpassword { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Old password")]
        public string OldPassword { get; set; }

       
    }
}