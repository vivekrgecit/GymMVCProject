#pragma checksum "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5b48a003477165aac23250d6ee68deaf0ebee5bf"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Account_Login), @"mvc.1.0.view", @"/Views/Account/Login.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\_ViewImports.cshtml"
using GymMvcCore;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\_ViewImports.cshtml"
using GymMvcCore.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\_ViewImports.cshtml"
using NonFactors.Mvc.Grid;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5b48a003477165aac23250d6ee68deaf0ebee5bf", @"/Views/Account/Login.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"6391bac4efb637ba48e0baf1723606458cb2867c", @"/Views/_ViewImports.cshtml")]
    public class Views_Account_Login : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<GymMvcCore.Models.Login>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/Images/dotnetsai.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
  
    ViewBag.Title = "Login";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 7 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
  
    Layout = "~/Views/Shared/_LoginLayout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div id=\"mainContent\">\r\n    <section class=\"container\">\r\n\r\n        <div class=\"innerContainer\">\r\n            <div class=\"row\">\r\n                <div id=\"myWizard\" class=\"formArea LRmargin\">\r\n");
#nullable restore
#line 17 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                     using (Html.BeginForm())
                    {
                        

#line default
#line hidden
#nullable disable
#nullable restore
#line 19 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                   Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <div id=\"divMessage\" class=\" text-center col-md-4 col-sm-4 col-md-offset-4 alert alert-success\">\r\n                            ");
#nullable restore
#line 22 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                       Write(Html.ValidationSummary());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </div>\r\n");
            WriteLiteral("                        <div class=\"logo col-sm-12 text-center col-md-12 \"> ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "5b48a003477165aac23250d6ee68deaf0ebee5bf5721", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("</div>\r\n                        <div class=\"col-md-4 col-md-offset-4 col-xs-12\">\r\n                            <div class=\"loginPage panel panel-info\">\r\n                                <div class=\"form-group\">\r\n                                    <span");
            BeginWriteAttribute("class", " class=\"", 1028, "\"", 1036, 0);
            EndWriteAttribute();
            WriteLiteral("><i class=\"glyphicon glyphicon-user\"></i> User</span>\r\n                                    ");
#nullable restore
#line 30 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                               Write(Html.TextBoxFor(m => m.username, new { @class = "form-control", autocomplete = "off" }));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                    ");
#nullable restore
#line 31 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                               Write(Html.ValidationMessageFor(m => m.username));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n                                </div>\r\n                                <div class=\"form-group\">\r\n                                    <span");
            BeginWriteAttribute("class", " class=\"", 1440, "\"", 1448, 0);
            EndWriteAttribute();
            WriteLiteral("><i class=\"glyphicon glyphicon-lock\"></i> Password</span>\r\n                                    ");
#nullable restore
#line 36 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                               Write(Html.PasswordFor(m => m.password, new { @class = "form-control", autocomplete = "off" }));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                    ");
#nullable restore
#line 37 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"
                               Write(Html.ValidationMessageFor(m => m.password));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

                                </div>
                                <div class=""form-group"">
                                    <input id=""BtnLogin"" type=""submit"" class=""btn btn-success btn-pressure"" name=""BtnLogin"" value=""Login"" />
                                    <input id=""BtnReset"" type=""reset"" class=""btn btn-info btn-pressure"" name=""BtnReset"" value=""Reset"" />

                                </div>

                            </div>
                        </div>
");
#nullable restore
#line 48 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Account\Login.cshtml"

                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <div class=\"clear\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n</div>\r\n\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<GymMvcCore.Models.Login> Html { get; private set; }
    }
}
#pragma warning restore 1591
