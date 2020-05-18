#pragma checksum "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "35a11ad26f66491b28c63a3b2dfd7e9758c26839"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_MvcGrid__Pager), @"mvc.1.0.view", @"/Views/Shared/MvcGrid/_Pager.cshtml")]
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
#line 1 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
using NonFactors.Mvc.Grid;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"35a11ad26f66491b28c63a3b2dfd7e9758c26839", @"/Views/Shared/MvcGrid/_Pager.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"6391bac4efb637ba48e0baf1723606458cb2867c", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_MvcGrid__Pager : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IGridPager>
    {
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
  
    Int32 totalPages = Model.TotalPages;
    Int32 currentPage = Model.CurrentPage;
    Int32 firstDisplayPage = Model.FirstDisplayPage;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    <div");
            BeginWriteAttribute("class", " class=\"", 205, "\"", 259, 1);
#nullable restore
#line 9 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
WriteAttributeValue("", 213, $"mvc-grid-pager {Model.CssClasses}".Trim(), 213, 46, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" data-show-page-sizes=\"");
#nullable restore
#line 9 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                                                                 Write(Model.ShowPageSizes);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">\r\n");
#nullable restore
#line 10 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
     if (totalPages > 0)
    {
        if (currentPage > 1)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" data-page=\"1\">&#171;</button>\r\n        <button type=\"button\" data-page=\"");
#nullable restore
#line 15 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                     Write(currentPage - 1);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">&#8249;</button>\r\n");
#nullable restore
#line 16 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" class=\"disabled\" tabindex=\"-1\">&#171;</button>\r\n        <button type=\"button\" class=\"disabled\" tabindex=\"-1\">&#8249;</button>\r\n");
#nullable restore
#line 21 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        for (Int32 page = firstDisplayPage; page <= totalPages && page < firstDisplayPage + Model.PagesToDisplay; page++)
        {
            if (page == currentPage)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" class=\"active\" data-page=\"");
#nullable restore
#line 26 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                                    Write(page);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 26 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                                             Write(page);

#line default
#line hidden
#nullable disable
            WriteLiteral("</button>\r\n");
#nullable restore
#line 27 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
            }
            else
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" data-page=\"");
#nullable restore
#line 30 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                     Write(page);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">");
#nullable restore
#line 30 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                              Write(page);

#line default
#line hidden
#nullable disable
            WriteLiteral("</button>\r\n");
#nullable restore
#line 31 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
            }
        }
        if (currentPage < totalPages)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" data-page=\"");
#nullable restore
#line 35 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                     Write(currentPage + 1);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">&#8250;</button>\r\n        <button type=\"button\" data-page=\"");
#nullable restore
#line 36 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                    Write(totalPages);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">&#187;</button>\r\n");
#nullable restore
#line 37 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <button type=\"button\" class=\"disabled\" tabindex=\"-1\">&#8250;</button>\r\n        <button type=\"button\" class=\"disabled\" tabindex=\"-1\">&#187;</button>\r\n");
#nullable restore
#line 42 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        if (Model.ShowPageSizes)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"mvc-grid-page-sizes\">\r\n");
#nullable restore
#line 46 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
         if (Model.PageSizes.Count > 0)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <select class=\"mvc-grid-pager-rows\">\r\n");
#nullable restore
#line 49 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
             foreach (KeyValuePair<Int32, String> size in Model.PageSizes)
            {
                if (Model.RowsPerPage == size.Key)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35a11ad26f66491b28c63a3b2dfd7e9758c268399540", async() => {
#nullable restore
#line 53 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                              Write(size.Value);

#line default
#line hidden
#nullable disable
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            BeginWriteTagHelperAttribute();
#nullable restore
#line 53 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                   WriteLiteral(size.Key);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            BeginWriteTagHelperAttribute();
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __tagHelperExecutionContext.AddHtmlAttribute("selected", Html.Raw(__tagHelperStringValueBuffer), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.Minimized);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
#nullable restore
#line 54 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35a11ad26f66491b28c63a3b2dfd7e9758c2683911925", async() => {
#nullable restore
#line 57 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                                     Write(size.Value);

#line default
#line hidden
#nullable disable
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            BeginWriteTagHelperAttribute();
#nullable restore
#line 57 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                   WriteLiteral(size.Key);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("value", __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper.Value, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
#nullable restore
#line 58 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
                }
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("            </select>\r\n");
#nullable restore
#line 61 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <input class=\"mvc-grid-pager-rows\"");
            BeginWriteAttribute("value", " value=\"", 2229, "\"", 2255, 1);
#nullable restore
#line 64 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
WriteAttributeValue("", 2237, Model.RowsPerPage, 2237, 18, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" />\r\n");
#nullable restore
#line 65 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("        </div>\r\n");
#nullable restore
#line 67 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
        else
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <input class=\"mvc-grid-pager-rows\" type=\"hidden\"");
            BeginWriteAttribute("value", " value=\"", 2380, "\"", 2406, 1);
#nullable restore
#line 70 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
WriteAttributeValue("", 2388, Model.RowsPerPage, 2388, 18, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" />\r\n");
#nullable restore
#line 71 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
        }
    }
    else
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <input class=\"mvc-grid-pager-rows\" type=\"hidden\"");
            BeginWriteAttribute("value", " value=\"", 2503, "\"", 2529, 1);
#nullable restore
#line 75 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
WriteAttributeValue("", 2511, Model.RowsPerPage, 2511, 18, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" />\r\n");
#nullable restore
#line 76 "D:\ITCodeRepo\GymMVCProject\GymMvcCore\GymMvcCore\Views\Shared\MvcGrid\_Pager.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IGridPager> Html { get; private set; }
    }
}
#pragma warning restore 1591