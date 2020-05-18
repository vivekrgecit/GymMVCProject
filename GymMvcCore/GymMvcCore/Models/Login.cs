﻿using System.ComponentModel.DataAnnotations;

namespace GymMvcCore.Models
{
    public class Login
    {

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }

        [Required(ErrorMessage = "Enter User name")]
        public string username { get; set; }
    }
}