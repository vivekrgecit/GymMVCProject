using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;

namespace GymMvcCore.Models
{
    public class YearwiseModel
    {
        public string YearID { get; set; }
        public IEnumerable<SelectListItem> YearNameList { get; set; }
    }
}