using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GymMvcCore.Filters;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;

namespace GymMvcCore.Controllers
{
    public class DashboardController : Controller
    {
        //
        // GET: /Dashboard/
        [MyExceptionHandler]
        [Authorize(Roles = "Admin")]
        public ActionResult AdminDashboard()
        {
            return View();
        }

        [MyExceptionHandler]
        [Authorize(Roles = "User")]
        public ActionResult UserDashboard()
        {
            return View();
        }

    }
}