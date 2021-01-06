using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using X.PagedList;



using ThuongMaiDienTu.Models;

namespace ThuongMaiDienTu.Controllers
{
    public class CategoryController : Controller
    {
        public THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities();
        // GET: Category
        public List<PRODUCT> NewProduct(int count, string keyword, string IdCategory, bool all)
        {
            //Nếu lấy tất cả danh mục
            if (all)
            {
                List<PRODUCT> ds;
                if (string.IsNullOrEmpty(keyword))
                    ds = db.PRODUCTs.OrderByDescending(x => x.IdProduct).ToList();
                else
                    ds = db.PRODUCTs.Where(x => x.ProductName.ToLower().Contains(keyword.ToLower())).OrderByDescending(x => x.IdProduct).ToList();
                return ds;
            }
            else
            {
                List<PRODUCT> ds;
                if (string.IsNullOrEmpty(keyword))
                    ds = db.PRODUCTs.AsEnumerable().Where(x => x.IdCategory == IdCategory.ToInt()).OrderByDescending(x => x.IdProduct).ToList();
                else
                    ds = db.PRODUCTs.AsEnumerable().Where(x => x.ProductName.ToLower().Contains(keyword.ToLower()) && x.IdCategory == IdCategory.ToInt()).OrderByDescending(x => x.IdProduct).Take(count).ToList();
                return ds;
            }
        }
        public ActionResult Index(string id, string timkiem, int? page)
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
            if (id == "0")
                id = "all";
            ViewBag.Key = timkiem;
            ViewBag.page=(page ?? 1);
            if (id.Length > 2)
            {
                ViewBag.id = id;
            }
            //Lấy tất cả danh mục
            if (id == "all" || id == "Index")
            {
                int pageSize = 6;
                int pageNum = (page ?? 1);
                
                var productNew = NewProduct(6, timkiem, "0", true);
                return View(productNew.ToPagedList(pageNum, pageSize));
            }
            //Lấy theo ID
            else
            {
                int CatID = id.Split('-')[id.Split('-').Length - 1].ToInt();
                int pageSize = 6;
                int pageNum = (page ?? 1);
                var productNew = NewProduct(6, timkiem, CatID.ToString(), false);

                ViewBag.id = id;
                return View(productNew.ToPagedList(pageNum, pageSize));
            }
        }

        int v1, v2;

        [Route("~/{val}/{page}")]
        public ActionResult FilterByPriceA(string cate,string val , int? page ,string timkiem=null)
        {
            ApiResultObj result = new ApiResultObj();
            int pageSize = 2;
            int pageNum = page??1;
            ViewBag.val = val;
            ViewBag.page1 = page;
            ViewBag.timkiem = timkiem;
            switch (val)
            {
                case "1":
                    v1 = 0;
                    v2 = 1000;
                    break;
                case "2":
                    v1 = 1000;
                    v2 = 5000;
                    break;
                case "3":
                    v1 = 5000;
                    v2 = 10000;
                    break;
                case "4":
                    v1 = 10000;
                    v2 = 15000;
                    break;
                case "5":
                    v1 = 15000;
                    v2 = 20000;
                    break;
                case "6":
                    v1 = 20000;
                    v2 = -1;
                    break;

            }
          

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                ViewBag.cate = cate;
                List<PRODUCT> product;
                if (timkiem == "" || timkiem == null)
                {
                    if (cate == "all" || cate == "Index")
                    {
                        if (v2 == -1)
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1).ToList();
                        }
                        else
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductPrice <= v2).ToList();
                        }
                    }
                    else
                    {
                        int CatID = -9;

                        if (cate.LastIndexOf("?") > -1)
                        {


                            CatID = cate.Substring(cate.IndexOf("-") + 1, 1).ToInt();
                        }
                        else
                            CatID = cate.Split('-')[cate.Split('-').Length - 1].ToInt();
                        if (v2 == -1)
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.IdCategory == CatID).ToList();
                        }
                        else
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductPrice <= v2 && x.IdCategory == CatID).ToList();
                        }
                    }
                }
                else
                {
                    if (cate == "all" || cate== "Index")
                    {
                        if (v2 == -1)
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductName.ToLower().Contains(timkiem.ToLower())).ToList();
                        }
                        else
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductPrice <= v2 && x.ProductName.ToLower().Contains(timkiem.ToLower())).ToList();
                        }
                    }
                    else
                    {
                        int CatID = -9;

                        if (cate.LastIndexOf("?") > -1)
                        {


                            CatID = cate.Substring(cate.IndexOf("-") + 1, 1).ToInt();
                        }
                        else
                            CatID = cate.Split('-')[cate.Split('-').Length - 1].ToInt();
                        if (v2 == -1)
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.IdCategory == CatID && x.ProductName.ToLower().Contains(timkiem.ToLower())).ToList();
                        }
                        else
                        {
                            product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductPrice <= v2 && x.IdCategory == CatID && x.ProductName.ToLower().Contains(timkiem.ToLower())).ToList();
                        }
                    }
                }
               


                List<ProductAPIModal> DataArr = new List<ProductAPIModal>();
                foreach (var pd in product)
                {
                    ProductAPIModal pdNew = new ProductAPIModal();
                    pdNew.idProduct = pd.IdProduct;
                    pdNew.nameProduct = pd.ProductName;
                    pdNew.priceProduct = pd.ProductPrice;
                    pdNew.idCategory = pd.IdCategory;
                    
                    var IMG = db.PRODUCT_IMG.Where(x => x.IdProduct == pd.IdProduct).FirstOrDefault();

                    pdNew.PRODUCT_IMG = IMG.Filename;
                    DataArr.Add(pdNew);
                }
                result.Success = true;
                result.Message = "Success";
                result.Data = DataArr;
                
                return PartialView("_FilterByPriceA", DataArr.ToPagedList(pageNum, pageSize));
            }



        }
    }
}