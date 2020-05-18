using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using GymMvcCore.Filters;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Http;

namespace GymMvcCore.Controllers
{
    [MyExceptionHandler]
    [Authorize(Roles = "User")]
    public class RegisterMemberController : Controller
    {
        public ISchemeMaster _objscheme;
        public IPlanMaster _objPlan;
        public IRegisterMember _objRegMem;
        public IPaymentDetails _objpay;


        public RegisterMemberController(ISchemeMaster objscheme, IPlanMaster objPlan, IRegisterMember objRegMem, IPaymentDetails objpay)
        {
            _objscheme = objscheme;
            _objPlan = objPlan;
            _objRegMem = objRegMem;
            _objpay = objpay;
        }

        [HttpGet]
        public ActionResult Index()
        {
            return View(_objRegMem.GetMember());
        }

        [HttpGet]

        public ActionResult Create()
        {
            MemberRegistrationDTO objMR = new MemberRegistrationDTO();

            objMR.ListScheme = BindListScheme();
            objMR.ListPlan = BindListPlan();
            objMR.Listgender = BindGender();
            ViewData["SelectedPlan"] = string.Empty;

            return View(objMR);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(MemberRegistrationDTO obj)
        {
            try
            {
                if (string.IsNullOrEmpty(obj.MemberFName))
                {
                    ModelState.AddModelError("Error", "Please enter First Name");
                }
                //else if (string.IsNullOrEmpty(obj.MemberMName))
                //{
                //    ModelState.AddModelError("Error", "Please enter Middle Name");
                //}
                else if (string.IsNullOrEmpty(obj.MemberLName))
                {
                    ModelState.AddModelError("Error", "Please enter Last Name");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(obj.DOB)))
                {
                    ModelState.AddModelError("Error", "Please select Birth Date");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(obj.JoiningDate)))
                {
                    ModelState.AddModelError("Error", "Please select Joining Date");
                }
                else if (string.IsNullOrEmpty(obj.Age))
                {
                    ModelState.AddModelError("Error", "Please enter Age");
                }
                else if (string.IsNullOrEmpty(obj.EmailID))
                {
                    ModelState.AddModelError("Error", "Please enter EmailID");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(obj.WorkouttypeID)))
                {
                    ModelState.AddModelError("Error", "Please select  Workouttype");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(obj.PlantypeID)))
                {
                    ModelState.AddModelError("Error", "Please select Plan");
                }
                else if (string.IsNullOrEmpty(obj.Contactno))
                {
                    ModelState.AddModelError("Error", "Please enter Contactno");
                }
                else if (string.IsNullOrEmpty(obj.Address))
                {
                    ModelState.AddModelError("Error", "Please enter Address");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(obj.Amount)))
                {
                    ModelState.AddModelError("Error", "Amount Cannot be Empty");
                }
                else
                {
                    string[] parttime = obj.DOB.ToString().Split('-');
                    int year1 = Convert.ToInt32(obj.DOB.Value.Year);
                    int month1 = Convert.ToInt32(obj.DOB.Value.Month);
                    int day1 = Convert.ToInt32(obj.DOB.Value.Day);
                    DateTime birthdate = new DateTime(year1, month1, day1);
                    obj.DOB = birthdate;

                    string[] joing = obj.JoiningDate.ToString().Split('-');
                    int year2 = Convert.ToInt32(obj.JoiningDate.Value.Year);
                    int month2 = Convert.ToInt32(obj.JoiningDate.Value.Month);
                    int day2 = Convert.ToInt32(obj.JoiningDate.Value.Day);
                    DateTime joining = new DateTime(year2, month2, day2);
                    obj.JoiningDate = joining;
                    obj.Createdby = HttpContext.Session.GetString("UserID");
                    int MemberID = _objRegMem.InsertMember(obj); // Insert into MemberDetails
                    if (MemberID > 0)
                    {
                        int payresult = Pay(obj, MemberID); // Insert into Paymentdetails
                        if (payresult > 0)
                        {
                            TempData["Message"] = "Member Created Successfully.";
                        }
                        else
                        {
                            TempData["Message"] = "Some thing went wrong while Member Created .";
                        }
                    }
                    else
                    {
                        TempData["Message"] = "Some thing went wrong while Member Created .";
                    }

                    return RedirectToAction("Create");
                }

                obj.ListScheme = BindListScheme(); // binding scheme
                obj.ListPlan = BindListPlan(); // binding plan
                obj.Listgender = BindGender(); // binding gender
                ViewData["SelectedPlan"] = obj.PlantypeID; // Maintaining plan dropdowm list after postback

                return View(obj);
            }
            catch (Exception)
            {

                throw;
            }
        }


        [HttpGet]
        public ActionResult Edit(int id)
        {
            var model = _objRegMem.GetMemberbyID(Convert.ToString(id));
            model.ListScheme = BindListScheme();
            model.ListPlan = BindListPlan();
            model.Listgender = BindGender();

            string[] joing = model.JoiningDate.ToString().Split('/');
            int year2 = Convert.ToInt32(model.JoiningDate.Value.Year);
            int month2 = Convert.ToInt32(model.JoiningDate.Value.Month);
            int day2 = Convert.ToInt32(model.JoiningDate.Value.Day);
            DateTime joining = new DateTime(year2, month2, day2);
            model.JoiningDate = joining;

            ViewData["SelectedPlan"] = model.PlantypeID;
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(MemberRegistrationDTO objMR, string actionType)
        {
            if (actionType == "Update")
            {

                if (string.IsNullOrEmpty(objMR.MemberFName))
                {
                    ModelState.AddModelError("Error", "Please enter First Name");
                }
                else if (string.IsNullOrEmpty(objMR.MemberMName))
                {
                    ModelState.AddModelError("Error", "Please enter Middle Name");
                }
                else if (string.IsNullOrEmpty(objMR.MemberLName))
                {
                    ModelState.AddModelError("Error", "Please enter Last Name");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(objMR.DOB)))
                {
                    ModelState.AddModelError("Error", "Please select Birth Date");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(objMR.JoiningDate)))
                {
                    ModelState.AddModelError("Error", "Please select Joining Date");
                }
                else if (string.IsNullOrEmpty(objMR.Age))
                {
                    ModelState.AddModelError("Error", "Please enter Age");
                }
                else if (string.IsNullOrEmpty(objMR.EmailID))
                {
                    ModelState.AddModelError("Error", "Please enter EmailID");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(objMR.WorkouttypeID)))
                {
                    ModelState.AddModelError("Error", "Please select  Workouttype");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(objMR.PlantypeID)))
                {
                    ModelState.AddModelError("Error", "Please select Plan");
                }
                else if (string.IsNullOrEmpty(objMR.Contactno))
                {
                    ModelState.AddModelError("Error", "Please enter Contactno");
                }
                else if (string.IsNullOrEmpty(objMR.Address))
                {
                    ModelState.AddModelError("Error", "Please enter Address");
                }
                else if (string.IsNullOrEmpty(Convert.ToString(objMR.Amount)))
                {
                    ModelState.AddModelError("Error", "Amount Cannot be Empty");
                }
                else
                {
                    string[] parttime = objMR.DOB.ToString().Split('-');
                    int year1 = Convert.ToInt32(objMR.DOB.Value.Year);
                    int month1 = Convert.ToInt32(objMR.DOB.Value.Month);
                    int day1 = Convert.ToInt32(objMR.DOB.Value.Day);
                    DateTime birthdate = new DateTime(year1, month1, day1);
                    objMR.DOB = birthdate;

                    string[] joing = objMR.JoiningDate.ToString().Split('-');
                    int year2 = Convert.ToInt32(objMR.JoiningDate.Value.Year);
                    int month2 = Convert.ToInt32(objMR.JoiningDate.Value.Month);
                    int day2 = Convert.ToInt32(objMR.JoiningDate.Value.Day);
                    DateTime joining = new DateTime(year2, month2, day2);
                    objMR.JoiningDate = joining;
                    objMR.Createdby = HttpContext.Session.GetString("UserID");
                    int MemberID = _objRegMem.UpdateMember(objMR); // Insert into MemberDetails
                    if (MemberID > 0)
                    {
                        int payresult = PayUpdate(objMR, MemberID);
                        TempData["MessageUpdate"] = "Member Created Successfully.";

                    }
                    return RedirectToAction("Index");
                }

                return RedirectToAction("Index");


            }
            else
            {
                return RedirectToAction("Index");
            }
        }


        [HttpGet]
        public ActionResult Delete(int id)
        {
            _objRegMem.DeleteMember(Convert.ToString(id));
            return RedirectToAction("Index");
        }



        #region Binding_Dropdown_code
        [NonAction] // if Method is not Action method then use NonAction
        public List<SchemeMasterDTO> BindListScheme()
        {
            List<SchemeMasterDTO> listscheme = new List<SchemeMasterDTO>()
            { new
            SchemeMasterDTO
            { SchemeID = 0,
                SchemeName = "Select" } };

            foreach (var item in _objscheme.GetSchemes())
            {
                SchemeMasterDTO sm = new SchemeMasterDTO();
                sm.SchemeID = item.SchemeID;
                sm.SchemeName = item.SchemeName;
                listscheme.Add(sm);
            }
            return listscheme;

        }

        [NonAction]
        public List<PlanMasterDTO> BindListPlan()
        {
            List<PlanMasterDTO>
            ListPlan = new List<PlanMasterDTO>() { new PlanMasterDTO { PlanID = 0, PlanName = "Select" } };

            foreach (var item in _objPlan.GetPlan())
            {
                PlanMasterDTO pm = new PlanMasterDTO();
                pm.PlanID = item.PlanID;
                pm.PlanName = item.PlanName;
                ListPlan.Add(pm);
            }


            return ListPlan;
        }

        [NonAction]
        public List<SelectListItem> BindGender()
        {

            List<SelectListItem> lgender = new List<SelectListItem>(){
            new SelectListItem { Text="Select", Value="0", Selected=true},
            new SelectListItem {Text="Male", Value="1", Selected=false},
            new SelectListItem {Text="Female", Value="2", Selected=false}
            };
            return lgender;



        }
        #endregion

        public IActionResult GetAmount(string PlanID, string WorkTypeID)
        {
            var amount = _objRegMem.GetAmount(PlanID, WorkTypeID);
            return Ok( amount);
        }

        public IActionResult GetPlan(string WorkTypeID)
        {
            var plandata = _objPlan.GetPlanByWorkTypeID(WorkTypeID);
            return Ok(plandata);
        }

        [NonAction]
        public int Pay(MemberRegistrationDTO obj, int MemberID)
        {
            try
            {
                PaymentDetailsDTO PayPD = new PaymentDetailsDTO();
                PayPD.PaymentID = 0;
                PayPD.PlanID = Convert.ToInt32(obj.PlantypeID);
                PayPD.WorkouttypeID = Convert.ToInt32(obj.WorkouttypeID);

                string[] joing = obj.JoiningDate.ToString().Split('/');
                int year2 = Convert.ToInt32(obj.JoiningDate.Value.Year);
                int month2 = Convert.ToInt32(obj.JoiningDate.Value.Month);
                int day2 = Convert.ToInt32(obj.JoiningDate.Value.Day);
                DateTime joining = new DateTime(year2, month2, day2);
                PayPD.PaymentFromdt = joining;
                PayPD.PaymentAmount = Convert.ToDecimal(obj.Amount);
                PayPD.CreateUserID = HttpContext.Session.GetString("UserID");
                PayPD.ModifyUserID = 0;
                PayPD.MemberID = MemberID;

                int payresult = _objpay.InsertPaymentDetails(PayPD);

                return payresult;
            }
            catch (Exception)
            {

                throw;
            }
        }

        [NonAction]
        public int PayUpdate(MemberRegistrationDTO obj, int MemberID)
        {
            try
            {
                PaymentDetailsDTO PayPD = new PaymentDetailsDTO();
                PayPD.PaymentID = 0;
                PayPD.PlanID = Convert.ToInt32(obj.PlantypeID);
                PayPD.WorkouttypeID = Convert.ToInt32(obj.WorkouttypeID);

                string[] joing = obj.JoiningDate.ToString().Split('-');
                int year2 = Convert.ToInt32(obj.JoiningDate.Value.Year);
                int month2 = Convert.ToInt32(obj.JoiningDate.Value.Month);
                int day2 = Convert.ToInt32(obj.JoiningDate.Value.Day);
                DateTime joining = new DateTime(year2, month2, day2);
                PayPD.PaymentFromdt = joining;
                PayPD.PaymentAmount = Convert.ToDecimal(obj.Amount);
                PayPD.CreateUserID = HttpContext.Session.GetString("UserID");
                PayPD.ModifyUserID = 0;
                PayPD.MemberID = MemberID;
                PayPD.PaymentID = Convert.ToInt32(obj.PaymentID);
                int payresult = _objpay.UpdatePaymentDetails(PayPD);

                return payresult;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}