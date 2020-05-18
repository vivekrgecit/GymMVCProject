using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using GymMvcCore.Filters;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using PagedList.Core;

namespace GymMvcCore.Controllers
{
    [MyExceptionHandler]
    [Authorize(Roles = "User,Admin")]
    public class PaymentController : Controller
    {
        const int RecordsPerPage = 10;

        public IPaymentlisting _objIPaymentlisting;

        public PaymentController(IPaymentlisting objIPaymentlisting)
        {
            _objIPaymentlisting = objIPaymentlisting;
        }


        public ActionResult PaymentDetails(PaymentlistingDTOVM model, string SearchButton)
        {
            PaymentlistingDTOVM dto = new PaymentlistingDTOVM();

            if (model.PaymentSearch == null)
            {
                ModelState.AddModelError("Message", "Please select type to search ( Member No / Member Name).");
            }
            else if (model.PaymentSearch == "1" && model.Memberno == null)
            {
                ModelState.AddModelError("Message", "Please Enter Member No.");
            }
            else if (model.PaymentSearch == "2" && model.MemberName == null)
            {
                ModelState.AddModelError("Message", "Please Enter Member Name.");
            }
            else
            {
                if (!string.IsNullOrEmpty(model.SearchButton) || model.Page.HasValue)
                {
                    if (model.Memberno != null)
                    {
                        var Listpay = _objIPaymentlisting.AllPaymentDetails(Convert.ToString(model.Memberno));

                        var results = Listpay.Where(p => (p.MemberID == model.Memberno));

                        var pageIndex = model.Page ?? 1;

                        model.SearchResults = results.ToPagedList(pageIndex, RecordsPerPage);
                    }
                    else if (model.MemberName != null)
                    {
                        string[] Memno = model.MemberName.Split('|');

                        var Listpay = _objIPaymentlisting.AllPaymentDetails(Convert.ToString(Memno[3]));

                        var results = Listpay.Where(p => (p.MemberID == Convert.ToInt32(Memno[3])));

                        var pageIndex = model.Page ?? 1;

                        model.SearchResults = results.ToPagedList(pageIndex, RecordsPerPage);
                    }
                }
            }

            return View(model);
        }

        public JsonResult GetDatabyMemberNo(string term)
        {
            var list = _objIPaymentlisting.ListofMemberNo(term);
            return Json(list, new Newtonsoft.Json.JsonSerializerSettings());
        }

        public JsonResult GetDatabyMemberName(string term)
        {
            var list = _objIPaymentlisting.ListofMemberName(term);
            return Json(list, new Newtonsoft.Json.JsonSerializerSettings());
        }

        public ActionResult AllMemberList()
        {
            PaymentlistingDTO dto = new PaymentlistingDTO();
            dto.PaymentList = _objIPaymentlisting.AllPaymentDetails();

            return View("AllMemberList", dto.PaymentList);
        }
    }
}