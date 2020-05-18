using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using System.Data;
using Microsoft.AspNetCore.Authorization;

namespace GymMvcCore.Controllers
{
    public class HomeController : Controller
    {
        [Authorize(Roles = "Admin")]
        public IActionResult Index()
        {
            ViewBag.Message = "Roles Management";

            return View();
        }

        public IActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
