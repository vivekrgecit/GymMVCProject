using Microsoft.AspNetCore.Mvc;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using GymMvcCore.Filters;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authorization;

namespace GymMvcCore.Controllers
{
    [MyExceptionHandler]
    [Authorize(Roles = "Admin")]
    public class SchemeController : Controller
    {
      public  ISchemeMaster _objISchemeMaster;

        public SchemeController(ISchemeMaster objISchemeMaster)
        {
            _objISchemeMaster = objISchemeMaster;
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View(new SchemeMasterDTO());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SchemeMasterDTO objSchemeMasterDTO)
        {
            if (ModelState.IsValid)
            {

                objSchemeMasterDTO.Createdby = HttpContext.Session.GetString("UserID");
                _objISchemeMaster.InsertScheme(objSchemeMasterDTO);
                TempData["Message"] = "Scheme Create Successfully.";
                return RedirectToAction("Create");
            }
            else
            {
                ModelState.AddModelError("Error", "Please enter Scheme Name ");
            }

            ModelState.Remove("SchemeName");

            return View(objSchemeMasterDTO);
        }

        public ActionResult SchemeNameExists(string SchemeName)
        {
            var result = _objISchemeMaster.SchemeNameExists(SchemeName);
            return Json(!result, new Newtonsoft.Json.JsonSerializerSettings());
        }

        [HttpGet]
        public ActionResult Details()
        {
            return View(_objISchemeMaster.GetSchemes());
        }

        [HttpGet]
        public ActionResult Edit(string ID)
        {
            var Model = _objISchemeMaster.GetSchemeByID(ID);
            return View(Model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SchemeMasterDTO objSchemeMasterDTO)
        {

            _objISchemeMaster.UpdateScheme(objSchemeMasterDTO);
            TempData["MessageUpdate"] = "Scheme Updated Successfully.";
            return RedirectToAction("Details");
        }


        [HttpGet]
        public ActionResult Delete(string ID)
        {
            _objISchemeMaster.DeleteScheme(ID);
            return RedirectToAction("Details");
        }
    }
}