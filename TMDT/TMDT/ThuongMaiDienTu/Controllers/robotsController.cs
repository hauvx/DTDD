using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.Mvc;

namespace ThuongMaiDienTu.Controllers
{
    public class robotsController : Controller
    {
        // GET: robot
        public ActionResult Index()
        {
            ReadText();
            return View();
        }
        public void ReadText ()
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + @"Content\files\Robots.txt";
            string readText = System.IO.File.ReadAllText(path);
            ViewBag.Text = readText;
        }
    }
}