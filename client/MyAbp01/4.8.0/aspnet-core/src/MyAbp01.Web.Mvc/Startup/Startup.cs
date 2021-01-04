using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Castle.Facilities.Logging;
using Abp.AspNetCore;
using Abp.Castle.Logging.Log4Net;
using MyAbp01.Authentication.JwtBearer;
using MyAbp01.Configuration;
using MyAbp01.Identity;
using MyAbp01.Web.Resources;
using Abp.AspNetCore.SignalR.Hubs;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Authentication.OpenIdConnect;
using IdentityServer4.AccessTokenValidation;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authentication.Cookies;

namespace MyAbp01.Web.Startup
{
    public class Startup
    {
        private readonly IConfigurationRoot _appConfiguration;

        public Startup(IHostingEnvironment env)
        {
            _appConfiguration = env.GetAppConfiguration();
        }

        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
            // MVC
            services.AddMvc(
                options => options.Filters.Add(new AutoValidateAntiforgeryTokenAttribute())
            ).SetCompatibilityVersion(CompatibilityVersion.Version_2_2);

            JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();

            IdentityRegistrar.Register(services);

            AuthConfigurer.Configure(services, _appConfiguration);

            services.AddAuthentication(options =>
            {
                options.DefaultScheme = "Cookies";
                
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme; //"Identity.Application";
                /*options.DefaultForbidScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignOutScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                */
                options.DefaultChallengeScheme = "oidc";
                ////options.DefaultAuthenticateScheme = IdentityServerAuthenticationDefaults.AuthenticationScheme;
            })
                .AddCookie("Cookies")
                .AddOpenIdConnect("oidc", options =>
                {
                    options.SignInScheme = "Cookies";

                    options.Authority = "https://localhost:44376";
                    // options.RequireHttpsMetadata = false;

                    options.ClientSecret = "secrets";

                    options.Scope.Add("openid");
                    options.Scope.Add("profile");
                    // options.Scope.Add("default-api");
                    options.Scope.Add("Roles");

                    options.GetClaimsFromUserInfoEndpoint = true;
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        NameClaimType = "name",
                        RoleClaimType = "role"
                    };

                    options.AuthenticationMethod = OpenIdConnectRedirectBehavior.FormPost;

                    options.ClientId = "gis";
                    options.SaveTokens = true;
                });

            services.AddScoped<IWebResourceManager, WebResourceManager>();

            // services.AddSignalR();

            // Configure Abp and Dependency Injection
            return services.AddAbp<MyAbp01WebMvcModule>(
                // Configure Log4Net logging
                options => options.IocManager.IocContainer.AddFacility<LoggingFacility>(
                    f => f.UseAbpLog4Net().WithConfig("log4net.config")
                )
            );
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            app.UseAbp(); // Initializes ABP framework.

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
            }

            // app.UseHttpsRedirection();

            // app.UseCookiePolicy();
/*
            var forwardOptions = new ForwardedHeadersOptions
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto,
                RequireHeaderSymmetry = false
            };
            forwardOptions.KnownNetworks.Clear();
            forwardOptions.KnownProxies.Clear();
            // ref: https://github.com/aspnet/Docs/issues/2384
            app.UseForwardedHeaders(forwardOptions);*/


            app.UseStaticFiles();

            app.UseAuthentication();


            // app.UseJwtTokenMiddleware();

            /*            app.UseSignalR(routes =>
                        {
                            routes.MapHub<AbpCommonHub>("/signalr");
                        });*/

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "defaultWithArea",
                    template: "{area}/{controller=Home}/{action=Index}/{id?}");

                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
