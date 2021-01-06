using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuongMaiDienTu.Models;

namespace ThuongMaiDienTu.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index ( )
        {
            ViewBag.Title = "Giá không tưởng";
            return View();
        }

        public ActionResult Category ( int id )
        {
            return View();
        }

        public ActionResult Contact ()
        {
            return View();
        }


        public ActionResult checkOrder ( string phone )
        {
            if (string.IsNullOrEmpty(phone) || !phone.IsPhoneNumber())
                return View();
            ApiResult result = new ApiResult();
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var custom = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(phone)).FirstOrDefault();
                //câu truy vấn sai
                var order = db.ORDERs.Where(x => x.IdCustomer == custom.IdCustomer)?.FirstOrDefault();
                //.Join
                //(
                // db.PAYMENT_METHOD,
                // a => a.IdPayment,
                // b => b.IdPayment,
                // ( a, b ) => new { a, b }
                //).Where(x => x.a.IdCustomer == custom.IdCustomer).Select(x => new
                //{
                //    x.a.IdOrder,
                //    x.a.IdCustomer, ///get ra các thông tin cần lấy đi, có ng tới :v, xong alo a 
                //        x.a.DateOrder,
                //    x.a.DateDelivery,
                //    x.a.IdPayment,
                //    x.a.Total,
                //    x.a.IdStatus
                //})


                if (custom is null)
                {
                    return ViewBag.Error = "Số điện thoại này không tồn tại";
                }
                return View(order);
                //return new JsonResult()
                //{
                //    Data = new { NAME = custom.CustomerName, SDT = custom.CustomerPhone, ORDER = order.IdOrder },
                //    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                //};
            }
        }
    }
}
