using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ThuongMaiDienTu.Controllers
{
    public class NewsController : Controller
    {
        // GET: News
        public ActionResult Index( int? id )
        {
            ViewBag.Title = "Tin Tức";
            if (id == null)
            {
                ViewBag.id = -1;
            }
          else
            {
                ViewBag.id = id;
            }
            return View();
        }
        public ActionResult Info(int id)
        {
            ViewBag.Title = "Chi Tiết Tin Tức";
            ViewBag.Id = id;
            return View();
        }
    }
}