using System;
using System.Collections.Generic;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Rendering;
using GymMvcCore.Filters;

namespace GymMvcCore.Controllers
{
    [MyExceptionHandler]
    [Authorize(Roles = "Admin")]
    public class PlanController : Controller
    {
        public IPlanMaster _objIPlanMaster;
        public ISchemeMaster _objscheme;

        public PlanController(IPlanMaster objIPlanMaster, ISchemeMaster objscheme)
        {
            _objIPlanMaster = objIPlanMaster;
            _objscheme = objscheme;
        }

        public ActionResult Index()
        {
            return View(_objIPlanMaster.GetPlan());
        }

        //
        // GET: /Plan/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Plan/Create

        [HttpGet]
        public ActionResult Create()
        {
            PlanMasterDTO objPM = new PlanMasterDTO();

            List<SchemeMasterDTO> listscheme = new List<SchemeMasterDTO>();
            listscheme = new List<SchemeMasterDTO>()
            {
            new SchemeMasterDTO { SchemeID = 0, SchemeName ="Select"}
            };



            foreach (var item in _objscheme.GetSchemes())
            {
                SchemeMasterDTO sm = new SchemeMasterDTO();
                sm.SchemeID = item.SchemeID;
                sm.SchemeName = item.SchemeName;

                listscheme.Add(sm);
            }


            objPM.ListScheme = listscheme;

            objPM.ListofPeriod = new List<SelectListItem>()
            {
                new SelectListItem{ Text="Select" , Selected =true, Value ="0"  },
                new SelectListItem { Text="3 Month" , Selected =false, Value ="3"  },
                new SelectListItem { Text="6 Month" , Selected =false, Value ="6"  },
                new SelectListItem { Text="1 Year" , Selected =false, Value ="12"  },
            };


            return View(objPM);
        }

        //
        // POST: /Plan/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(PlanMasterDTO objplan)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (objplan.SchemeID == 0)
                    {
                        ModelState.AddModelError("SchemeMessage", "Please select Scheme Name");
                        Method(objplan);
                        return View(objplan);
                    }
                    else if (objplan.PeriodID == 0)
                    {
                        ModelState.AddModelError("PeriodMessage", "Please select Period Name");
                        Method(objplan);
                        return View(objplan);
                    }
                    else
                    {
                        objplan.PlanID = 0;
                        objplan.CreateUserID = HttpContext.Session.GetString("UserID");
                        objplan.CreateDate = DateTime.Now;
                        objplan.ModifyDate =  DateTime.Now;
                        objplan.RecStatus = "A";
                        TempData["notice"] = "Plan Created Successfully";
                        _objIPlanMaster.InsertPlan(objplan);
                        return RedirectToAction("Create");

                    }
                }
                else
                {
                    Method(objplan);
                    return View(objplan);
                }
            }
            catch
            {
                Method(objplan);
                return View(objplan);
            }
        }

        //
        // GET: /Plan/Edit/5

        public ActionResult Edit(int id)
        {
            var Model = _objIPlanMaster.GetPlanByID(Convert.ToString(id));
            EDITMethod(Model);

            return View(Model);
        }

        //
        // POST: /Plan/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(PlanMasterDTO objplan, string actionType)
        {
            if (actionType == "Update")
            {

                try
                {

                    if (ModelState.IsValid)
                    {
                        if (objplan.SchemeID == 0)
                        {
                            ModelState.AddModelError("SchemeMessage", "Please select Scheme Name");
                            Method(objplan);
                            return View(objplan);
                        }
                        else if (objplan.PeriodID == 0)
                        {
                            ModelState.AddModelError("PeriodMessage", "Please select Period Name");
                            Method(objplan);
                            return View(objplan);
                        }
                        else
                        {
                            objplan.CreateUserID = HttpContext.Session.GetString("UserID");
                            objplan.CreateDate = DateTime.Now;
                            objplan.ModifyDate = DateTime.Now;
                            objplan.RecStatus = "A";

                            _objIPlanMaster.UpdatePlan(objplan);
                            TempData["notice"] = "Plan Updated Successfully";

                            Method(objplan);
                            return View(objplan);

                        }
                    }
                    else
                    {
                        Method(objplan);
                        return View(objplan);
                    }
                }
                catch(Exception)
                {
                    return View();
                }
            }
            else
            {
                return RedirectToAction("Index");
            }
        }

        //
        // GET: /Plan/Delete/5

        public ActionResult Delete(int id)
        {
            _objIPlanMaster.DeletePlan(Convert.ToString(id));
            return RedirectToAction("Index");
        }

        //
        // POST: /Plan/Delete/5



        public ActionResult PlannameExists(string Planname)
        {
            var result = _objIPlanMaster.PlannameExists(Planname);
            return Json(!result, new Newtonsoft.Json.JsonSerializerSettings());
        }


        public void Method(PlanMasterDTO objplan)
        {
            ModelState.Remove("ListScheme");
            ModelState.Remove("ListofPeriod");
            List<SchemeMasterDTO> listscheme = new List<SchemeMasterDTO>();
            listscheme = new List<SchemeMasterDTO>() { new SchemeMasterDTO { SchemeID = 0, SchemeName = "Select" } };

            foreach (var item in _objscheme.GetSchemes())
            {
                SchemeMasterDTO sm = new SchemeMasterDTO();
                sm.SchemeID = item.SchemeID;
                sm.SchemeName = item.SchemeName;
                listscheme.Add(sm);
            }


            objplan.ListScheme = listscheme;

            objplan.ListofPeriod = new List<SelectListItem>()
                {
                new SelectListItem{ Text="Select" , Selected =true, Value ="0"  },
                new SelectListItem { Text="3 Month" , Selected =false, Value ="3"  },
                new SelectListItem { Text="6 Month" , Selected =false, Value ="6"  },
                new SelectListItem { Text="1 Year" , Selected =false, Value ="12"  },
                };
        }

        public void EDITMethod(PlanMasterDTO objplan)
        {
            ModelState.Remove("ListScheme");
            ModelState.Remove("ListofPeriod");
            List<SchemeMasterDTO> listscheme = new List<SchemeMasterDTO>();
            listscheme = new List<SchemeMasterDTO>() { new SchemeMasterDTO { SchemeID = 0, SchemeName = "Select" } };

            foreach (var item in _objscheme.GetSchemes())
            {
                SchemeMasterDTO sm = new SchemeMasterDTO();
                sm.SchemeID = item.SchemeID;
                sm.SchemeName = item.SchemeName;
                listscheme.Add(sm);
            }


            objplan.ListScheme = listscheme;
            objplan.SchemeID = objplan.SchemeID;

            objplan.ListofPeriod = new List<SelectListItem>()
                {
                new SelectListItem{ Text="Select" , Selected =true, Value ="0"  },
                new SelectListItem { Text="3 Month" , Selected =false, Value ="3"  },
                new SelectListItem { Text="6 Month" , Selected =false, Value ="6"  },
                new SelectListItem { Text="1 Year" , Selected =false, Value ="12"  },
                };

            objplan.PeriodID = objplan.PeriodID;
        }
    }
}