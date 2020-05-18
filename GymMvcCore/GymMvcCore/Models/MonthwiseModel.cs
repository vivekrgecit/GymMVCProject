using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;

namespace GymMvcCore.Models
{
    public class MonthwiseModel
    {
        public string MonthID { get; set; }
        public IEnumerable<SelectListItem> MonthNameList { get; set; }
    }
}