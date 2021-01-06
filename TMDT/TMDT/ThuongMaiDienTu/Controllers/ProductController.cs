using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ThuongMaiDienTu.Controllers
{
    public class ProductController : Controller
    {

        // GET: Product

        public ActionResult Index()
        {
            int slitem = 0;
            int tongtien = 0;
            foreach (var item in Session["cart"] as List<PRODUCT>)
            {
                slitem += item.Quantily;
                tongtien += (int)item.ProductPrice * item.Quantily;
            }
            ViewBag.sl = slitem;
            ViewBag.tongtien = tongtien;

            return View();
        }
        public ActionResult Info(int? id)
        {
            int slitem = 0;
            int tongtien = 0;
            if (Session["cart"] != null)
            {
                foreach (var item in Session["cart"] as List<PRODUCT>)
                {
                    slitem += item.Quantily;
                    tongtien += (int)item.ProductPrice * item.Quantily;
                }
            }
            ViewBag.sl = slitem;
            ViewBag.tongtien = tongtien;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
              
                if (id is null) return HttpNotFound();
                var product = db.PRODUCTs.Where(x => x.IdProduct == id).FirstOrDefault();
                string linkk = "http://m-store.store/img/product/" + product.PRODUCT_IMG.FirstOrDefault().Filename;
                Session["imgShare"] = linkk;
                if (product is null) return HttpNotFound();
                
                return View(product);

            }
        }
    }
}