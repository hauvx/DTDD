﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ThuongMaiDienTu
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapRoute(
                name: "Robots.txt",
                url: "robots.txt",
               new { controller = "robots", action = "Index" });
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            
            routes.MapRoute(
                name: "Danh mục",
                url: "dtdd/{id}",
                new { controller = "Category", action = "Index", id = UrlParameter.Optional}
            );
            routes.MapRoute(
                name: "Tin tức",
                url: "tin-tuc/{alias}-{id}",
                new { controller = "News", action = "Info" }, new { id = @"\d+" }
            );

            routes.MapRoute(
                name: "Chi tiết san phẩm",
                url: "{alias}-{id}",
                new { controller = "Product", action = "Info" }, new { id = @"\d+" }
            );


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

           

        }
    }
}
