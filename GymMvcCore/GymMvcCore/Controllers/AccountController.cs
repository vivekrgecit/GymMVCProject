using System;
using System.Security.Claims;
using GymMvcCore.Models;
using GymMvcCore.Repository;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GymMvcCore.Controllers
{
    public class AccountController : Controller
    {
        public IConfiguration _configuration { get; }
        public IAccountData objIAccountData { get; }
        public AccountController(IConfiguration configuration, IAccountData accountData)
        {
            objIAccountData = accountData;
            _configuration = configuration;
        }


        [HttpGet]
        [AllowAnonymous]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public IActionResult Login(Login login)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("Error", "Please enter Username and Password");
            }
            else
            {
                bool success = AuthenticateUser(login.username, login.password);

                if (success == true)
                {
                    var userID = GetUserID_By_UserName(login.username);
                    var loginType = GetRoleBy_UserID(Convert.ToString(userID));
                    HttpContext.Session.SetString("Name", login.username);
                    HttpContext.Session.SetString("UserID", userID);
                    string role;
                    string actionName;
                    if (loginType == "Admin")
                    {
                        role = "Admin";
                        actionName = "AdminDashboard";
                    }
                    else
                    {
                        role = "User";
                        actionName = "UserDashboard";
                    }
                    //Create the identity for the user  
                    var identity = new ClaimsIdentity(new[] {
                    new Claim(ClaimTypes.Name, login.username),
                    new Claim(ClaimTypes.Role, role)
                }, CookieAuthenticationDefaults.AuthenticationScheme);
                    HttpContext.Session.SetString("LoginType", role);
                    var principal = new ClaimsPrincipal(identity);

                    HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, principal);

                    return RedirectToAction(actionName, "Dashboard");
                }
                else
                {
                    ModelState.AddModelError("Error", "Please enter valid Username and Password");
                }
            }

            return View(login);

        }

        //[HttpGet]
        //[AllowAnonymous]
        //public ActionResult Register()
        //{
        //    return View();
        //}

        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Register(Register register, string actionType)
        //{
        //    if (actionType == "Save")
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            if (!WebSecurity.UserExists(register.username))
        //            {
        //                WebSecurity.CreateUserAndAccount(register.username, register.password,
        //                    new { FullName = register.FullName, EmailID = register.EmailID });
        //                Response.Redirect("~/account/login");
        //            }
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("Error", "Please enter all details");
        //        }
        //        return View();

        //    }
        //    else
        //    {
        //        return RedirectToAction("Index");
        //    }
        //}


        //[HttpGet]
        //[MyExceptionHandler]
        //public ActionResult RoleCreate()
        //{
        //    return View();
        //}

        //[HttpPost]
        //[MyExceptionHandler]
        //[ValidateAntiForgeryToken]
        //public ActionResult RoleCreate(Role role)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        if (Roles.RoleExists(role.RoleName))
        //        {
        //            ModelState.AddModelError("Error", "Rolename already exists");
        //            return View(role);
        //        }
        //        else
        //        {
        //            Roles.CreateRole(role.RoleName);
        //            return RedirectToAction("RoleIndex", "Account");
        //        }
        //    }
        //    else
        //    {
        //        ModelState.AddModelError("Error", "Please enter Username and Password");
        //    }
        //    return View(role);
        //}

        //[HttpGet]
        //[MyExceptionHandler]
        //public ActionResult RoleAddToUser()
        //{
        //    AssignRoleVM objvm = new AssignRoleVM();
        //    objvm.RolesList = GetAll_Roles();
        //    objvm.Userlist = GetAll_Users();
        //    return View(objvm);
        //}


        //[HttpPost]
        //[MyExceptionHandler]
        //[ValidateAntiForgeryToken]
        //public ActionResult RoleAddToUser(AssignRoleVM objvm)
        //{

        //    if (objvm.RoleName == "0")
        //    {
        //        ModelState.AddModelError("RoleName", "Please select RoleName");
        //    }

        //    if (objvm.UserName == "0")
        //    {
        //        ModelState.AddModelError("UserName", "Please select Username");
        //    }

        //    if (ModelState.IsValid)
        //    {

        //        if (objIAccountData.Get_CheckUserRoles(objvm.UserName) == true)
        //        {
        //            ViewBag.ResultMessage = "This user already has the role specified !";
        //        }
        //        else
        //        {
        //            var UserName = objIAccountData.GetUserName_BY_UserID(objvm.UserName);
        //            Roles.AddUserToRole(UserName, objvm.RoleName);
        //            ViewBag.ResultMessage = "Username added to the role succesfully !";
        //        }
        //        objvm.RolesList = GetAll_Roles();
        //        objvm.Userlist = GetAll_Users();

        //        return View(objvm);
        //    }
        //    else
        //    {
        //        objvm.RolesList = GetAll_Roles();
        //        objvm.Userlist = GetAll_Users();
        //        ModelState.AddModelError("Error", "Please enter Username and Password");
        //    }

        //    return View(objvm);
        //}


        //[HttpPost]
        //[MyExceptionHandler]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteRoleForUser(AssignRoleVM objvm)
        //{
        //    if (objvm.RoleName == "0")
        //    {
        //        ModelState.AddModelError("RoleName", "Please select RoleName");
        //    }

        //    if (objvm.UserName == "0")
        //    {
        //        ModelState.AddModelError("UserName", "Please select Username");
        //    }

        //    objvm.RolesList = GetAll_Roles();
        //    objvm.Userlist = GetAll_Users();

        //    if (ModelState.IsValid)
        //    {
        //        if (objIAccountData.Get_CheckUserRoles(objvm.UserName) == true)
        //        {
        //            var UserName = objIAccountData.GetUserName_BY_UserID(objvm.UserName);
        //            Roles.RemoveUserFromRole(UserName, objvm.RoleName);
        //            ViewBag.ResultMessage = "Role removed from this user successfully !";
        //        }
        //        else
        //        {
        //            ViewBag.ResultMessage = "This user doesn't belong to selected role.";
        //        }
        //    }
        //    return View(objvm);
        //}

        //[HttpGet]
        //[MyExceptionHandler]
        //public ActionResult DeleteRoleForUser()
        //{
        //    AssignRoleVM objvm = new AssignRoleVM();
        //    objvm.RolesList = GetAll_Roles();
        //    objvm.Userlist = GetAll_Users();
        //    return View(objvm);
        //}


        //[HttpGet]
        //[MyExceptionHandler]
        //public ActionResult DisplayAllUserroles()
        //{
        //    AllroleandUser objru = new AllroleandUser();
        //    objru.AllDetailsUserlist = objIAccountData.DisplayAllUser_And_Roles();
        //    return View(objru);
        //}

        //[MyExceptionHandler]
        //public ActionResult RoleIndex()
        //{
        //    var roles = objIAccountData.GetRoles();
        //    return View(roles);
        //}

        //[MyExceptionHandler]
        //public ActionResult RoleDelete(string RoleName)
        //{
        //    Roles.DeleteRole(RoleName);
        //    return RedirectToAction("RoleIndex", "Account");
        //}

        //[HttpPost]
        //[MyExceptionHandler]
        //[ValidateAntiForgeryToken]
        //public ActionResult GetRoles(string UserName)
        //{
        //    if (!string.IsNullOrWhiteSpace(UserName))
        //    {
        //        ViewBag.RolesForThisUser = Roles.GetRolesForUser(UserName);
        //        SelectList list = new SelectList(Roles.GetAllRoles());
        //        ViewBag.Roles = list;
        //    }
        //    return View("RoleAddToUser");
        //}

        public async System.Threading.Tasks.Task<IActionResult> LogOffAsync()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Login");
        }

        //[HttpGet]
        ////[MyExceptionHandler]
        //public IActionResult Changepassword()
        //{
        //    return View(new ChangepasswordVM());
        //}

        //[HttpPost]
        ////[MyExceptionHandler]
        //[ValidateAntiForgeryToken]
        //public IActionResult Changepassword(ChangepasswordVM VM)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        if (!WebSecurity.UserExists(HttpContext.Session.GetString("Name")))
        //        {
        //            ModelState.AddModelError("Error", "UserName ");

        //        }
        //        else
        //        {
        //            //var token = WebSecurity.GeneratePasswordResetToken(Convert.ToString(Session["Name"]));
        //            //WebSecurity.ResetPassword(token, VM.password);
        //            //ViewBag = "Password Changed";

        //            var value = WebSecurity.ChangePassword(HttpContext.Session.GetString("Name"), VM.OldPassword, VM.Newpassword);

        //            if (value == false)
        //            {
        //                ModelState.AddModelError("Error", "Incorrect Old Password");
        //                return View(VM);
        //            }
        //            else
        //            {
        //                ViewBag.ResultMessage = "Password Changed Successfully";
        //            }

        //        }
        //    }
        //    else
        //    {
        //        ModelState.AddModelError("Error", "Fill on Fields");
        //    }
        //    return View(VM);
        //}

        [HttpGet]
        [AllowAnonymous]
        public IActionResult AllRegisterUserDetails()
        {
            var Users = objIAccountData.GetAllUsers();
            return View(Users);
        }

        public string GetRoleBy_UserID(string UserId)
        {
            return objIAccountData.GetRoleByUserID(UserId);
        }

        public string GetUserID_By_UserName(string UserName)
        {
            return objIAccountData.GetUserID_By_UserName(UserName);
        }
        public bool AuthenticateUser(string UserName, string Password)
        {
            return objIAccountData.AuthenticateUser(UserName, Password);
        }

        //[HttpGet]
        //[AllowAnonymous]
        //public IActionResult CheckUserNameExists(string username)
        //{
        //    bool UserExists = false;

        //    try
        //    {
        //        var nameexits = objIAccountData.Get_checkUsernameExits(username);

        //        if (string.Equals(nameexits, "1"))
        //        {
        //            UserExists = true;
        //        }
        //        else
        //        {
        //            UserExists = false;
        //        }
        //        return Json(!UserExists, System.Web.Mvc.JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception)
        //    {
        //        return Json(false, System.Web.Mvc.JsonRequestBehavior.AllowGet);
        //    }
        //}

        //[NonAction]
        //public List<SelectListItem> GetAll_Roles()
        //{
        //    List<SelectListItem> listrole = new List<SelectListItem>();

        //    listrole.Add(new SelectListItem { Text = "Select", Value = "0" });

        //    foreach (var item in Roles.GetAllRoles())
        //    {
        //        listrole.Add(new SelectListItem { Text = item, Value = item });
        //    }

        //    return listrole;
        //}


        //public List<System.Web.Mvc.SelectListItem> GetAll_Users()
        //{
        //    var Userlist = objIAccountData.GetAllUsers();
        //    List<System.Web.Mvc.SelectListItem> listuser = new List<System.Web.Mvc.SelectListItem>();
        //    listuser.Add(new System.Web.Mvc.SelectListItem { Text = "Select", Value = "0" });
        //    foreach (var item in Userlist)
        //    {
        //        listuser.Add(new System.Web.Mvc.SelectListItem { Text = item.UserName, Value = item.Id });
        //    }

        //    return listuser;
        //}
    }
}