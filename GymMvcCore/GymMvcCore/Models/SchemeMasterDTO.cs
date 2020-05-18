﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace GymMvcCore.Models
{
    public class SchemeMasterDTO
    {
        [Key]
        public int SchemeID { get; set; }
        [Required(ErrorMessage = "Please enter Scheme Name")]
        [Remote("SchemeNameExists", "Scheme", ErrorMessage = "Scheme Name Already Exists ")]
        public string SchemeName { get; set; }
        public string Createdby { get; set; }
        public DateTime Createddate { get; set; }
    }
}