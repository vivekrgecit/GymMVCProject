using System;
using GymMvcCore.Filters;
using GymMvcCore.Repository;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Azure.Services.AppAuthentication;
using Microsoft.Azure.KeyVault;
using Microsoft.Azure.KeyVault.Models;
using System.Threading.Tasks;

namespace GymMvcCore
{
    public class Startup
    {
        private readonly IConfiguration _configuration;

        public Startup(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Get Connection String from Azure KeyVault by using service principle service
            //AzureServiceTokenProvider azureServiceTokenProvider = new AzureServiceTokenProvider();
            //KeyVaultClient keyVaultClient = new KeyVaultClient(new KeyVaultClient.AuthenticationCallback(azureServiceTokenProvider.KeyVaultTokenCallback));
            //SecretBundle secret = keyVaultClient.GetSecretAsync("https://gymsqlconnectionstring.vault.azure.net/", Environment.GetEnvironmentVariable("KEY_VAULT_SECRETE_KEY_NAME")).Result;
            //var conStr = secret.Value;

            // Get Connection String from appsettings.json
            var conStr = _configuration.GetConnectionString("Mystring");
            services.Configure<CookiePolicyOptions>(options =>
            {
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.Strict;
            });

            services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme).AddCookie(options =>
            {
                options.LoginPath = "/Account/Login";
                options.LogoutPath = "/Account/LogOff";
                //options.Cookie.Expiration = TimeSpan.FromMinutes(10);
            });
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<SessionAccessor>();
            services.AddControllersWithViews();
            services.AddDistributedMemoryCache();
            services.AddTransient<IAccountData>(s => new AccountData(conStr));
            services.AddTransient<ISchemeMaster>(s => new SchemeMaster(conStr));
            services.AddTransient<IPlanMaster>(s => new PlanMaster(conStr));
            services.AddTransient<IRegisterMember>(s => new RegisterMember(conStr));
            services.AddTransient<IPaymentDetails>(s => new PaymentDetails(conStr));
            services.AddTransient<IPaymentlisting>(s => new Paymentlisting(conStr));
            services.AddSession(options =>
            {
                options.IdleTimeout = TimeSpan.FromMinutes(5);
                options.Cookie.HttpOnly = true;
                options.Cookie.IsEssential = true;
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseStatusCodePages();
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseSession();
            app.UseRouting();

            app.UseCookiePolicy();
            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Account}/{action=login}/{id?}");
            });
        }
    }
}
