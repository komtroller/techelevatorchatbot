using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using WebApplication.Web.DAL;


namespace WebApplication.Web
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // help with cross-domain communication, APIs.
            services.AddCors(options => {
                options.AddPolicy("CorsPolicy",
                builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
            });

            // Session must be configured for our authentication
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This determines whether user consent for non-essential cookies
                //is needed.
                options.CheckConsentNeeded = context => false;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddDistributedMemoryCache();
            services.AddSession(options =>
            {
                // Sets session expiration to 20 minuates
                options.IdleTimeout = TimeSpan.FromMinutes(20);
                options.Cookie.HttpOnly = true;
            });

            // Connection String
            string connectionString = Configuration.GetConnectionString("Database");

            // Dependency Injection
            // For Authentication
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

            services.AddTransient<IChatbotDAO, ChatbotDAO>(dao => new ChatbotDAO(Configuration.GetConnectionString("Default")));

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseCookiePolicy();
            app.UseSession();
            //APIS

            app.UseCors("CorsPolicy");

            app.UseMvc();
            //app.UseMvc(routes =>
            //{
            //    routes.MapRoute(
            //        name: "default",
            //        template: "{controller=Chat}/{action=Index}/{id?}");
            //});
        }
    }
}
