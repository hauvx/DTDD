using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using ThuongMaiDienTu.Helper;
using ThuongMaiDienTu.Models;

namespace ThuongMaiDienTu.Controllers
{
    public class AjaxController : Controller
    {
        public JsonResult AddCart(int id)
        {
            if (Session["cart"] is null) Session["cart"] = new List<PRODUCT>();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var product = db.PRODUCTs.Where(x => x.IdProduct == id).FirstOrDefault();
                if (product is null) return new JsonResult()
                {
                    Data = new { Success = 0, Message = "Không tìm thấy sản phẩm này" },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };

                var list = Session["cart"] as List<PRODUCT>;
                if (list.Any(x => x.IdProduct == id))
                {
                    list.Find(x => x.IdProduct == id).Quantily++;
                    var sl = list.Find(x => x.IdProduct == id).Quantily;
                    Session["cart"] = list;
                    return new JsonResult()
                    {
                        Data = new { Success = 0, Message = "Thêm sản phẩm thành công. SL : "+sl},
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
                    
                   
                product.Quantily = 1;  

                list.Add(product);

                Session["cart"] = list;
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
                return new JsonResult()
                {
                     
                Data = new { Success = 1, Message = list.Count },         
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };

            }

        }

        public ActionResult AddCartB(int id)
        {
            if (id >= 1)
            {
                if (Session["cart"] is null) Session["cart"] = new List<PRODUCT>();

                using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
                {
                    var product = db.PRODUCTs.Where(x => x.IdProduct == id).FirstOrDefault();


                    var list = Session["cart"] as List<PRODUCT>;
                    if (list.Any(x => x.IdProduct == id))
                    {
                        list.Find(x => x.IdProduct == id).Quantily++;
                        var sl = list.Find(x => x.IdProduct == id).Quantily;
                        Session["cart"] = list;

                    }
                    else
                    {
                        product.Quantily = 1;

                        list.Add(product);
                        Session["cart"] = list;
                    }

                }
                int slitem = 0;
                foreach(var item in  Session["cart"] as List<PRODUCT>)
                {
                    slitem += item.Quantily;
                }
                ViewBag.sl = slitem;
                return PartialView("_AddCart");

            }
            else
                return HttpNotFound();
        }


        [HttpPost]
        public JsonResult EditCart(EditCardModal editModal)
        {
            if (Session["cart"] is null) Session["cart"] = new List<PRODUCT>();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var product = db.PRODUCTs.Where(x => x.IdProduct == editModal.idProduct).FirstOrDefault();
                if (product is null) return new JsonResult()
                {
                    Data = new { Success = 0, Message = "Không tìm thấy sản phẩm này" },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };

                var list = Session["cart"] as List<PRODUCT>;
                if (list.Any(x => x.IdProduct == editModal.idProduct))
                {
                    if (editModal.type == "UP")
                    {
                        list.Find(x => x.IdProduct == editModal.idProduct).Quantily++;
                    }
                    else
                    {
                        if (list.Find(x => x.IdProduct == editModal.idProduct).Quantily == 1)
                            list.Remove(product);
                        else list.Find(x => x.IdProduct == editModal.idProduct).Quantily--;

                    }
                    Session["cart"] = list;
                    return new JsonResult()
                    {
                        Data = new { Success = 1, Message = list.Count },
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
                return new JsonResult()
                {
                    Data = new { Success = 1, Message = list.Count },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };

                //product.Quantily = 1;

                //list.Add(product);

                //Session["cart"] = list;

                //return new JsonResult()
                //{

                //    Data = new { Success = 1, Message = list.Count },
                //    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                //};

            }

        }

        [HttpPost]
        public ActionResult EditCartB(EditCardModal editModal)
        {
            if (Session["cart"] is null) Session["cart"] = new List<PRODUCT>();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var product = db.PRODUCTs.Where(x => x.IdProduct == editModal.idProduct).FirstOrDefault();
               
                var list = Session["cart"] as List<PRODUCT>;
                if (list.Any(x => x.IdProduct == editModal.idProduct))
                {
                    if (editModal.type == "UP")
                    {
                        list.Find(x => x.IdProduct == editModal.idProduct).Quantily++;
                    }
                    else
                    {
                        if (list.Find(x => x.IdProduct == editModal.idProduct).Quantily == 1)
                            list.Remove(product);
                        else list.Find(x => x.IdProduct == editModal.idProduct).Quantily--;

                    }
                    Session["cart"] = list;
                    
                }
                int slitem = 0;
                int tongtien = 0;
                foreach (var item in Session["cart"] as List<PRODUCT>)
                {
                    slitem += item.Quantily;
                    tongtien += (int)item.ProductPrice * item.Quantily;
                }
                ViewBag.sl = slitem;
                ViewBag.tongtien = tongtien;
                return PartialView("_EditCartB", Session["cart"]);

            }

        }


        public JsonResult RemoveCart(int id)
        {
            if (Session["cart"] is null) Session["cart"] = new List<PRODUCT>();

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                
                var list = Session["cart"] as List<PRODUCT>;
                var product = list.Where(x => x.IdProduct == id).FirstOrDefault();
                if (product is null) return new JsonResult()
                {
                    Data = new { Success = 0, Message = "Không tồn tại sản phẩm trong giỏ hàng" },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };

                list.Remove(product);

                Session["cart"] = list;

                return new JsonResult()
                {
                    Data = new { Success = 1, Message = list.Count },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }

        }

        public JsonResult GetCustomer(string phone)
        {
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                var customer = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(phone)).FirstOrDefault();
                if (customer is null) return null;

                return new JsonResult()
                {
                    Data = new { id = customer.IdCustomer ,Name = customer.CustomerName, Email = customer.CustomerEmail, Address = customer.CustomerAddress },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }

        }


        public JsonResult GetGiftcode(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var giftDB = db.GIFTCODEs.Where(x => x.IdCode == id).FirstOrDefault();
                if (giftDB is null) return null;
                return new JsonResult()
                {
                    Data = new { Code = giftDB.Code, Discount = giftDB.Discount },
                    JsonRequestBehavior = JsonRequestBehavior.DenyGet
                };
            }
        }

        [HttpPost]
        public string EditGiftcode(GIFTCODE gift)
        {
            if (Session["login"] is null) return "";

            if (String.IsNullOrEmpty(gift.Code) || gift.Discount < 1)
            {
                return "Vui lòng nhập đầy đủ thông tin";
            }

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                GIFTCODE c = new GIFTCODE();
                if (gift.IdCode > 0) c = db.GIFTCODEs.Where(x => x.IdCode == gift.IdCode).FirstOrDefault();
                if (c is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                c.Code = gift.Code.ToUpper();
                c.Discount = gift.Discount;
                if (gift.IdCode == 0) db.GIFTCODEs.Add(c);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        public JsonResult GetProductInfo(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var infoDB = db.INFOes.Where(x => x.IdInfo == id).FirstOrDefault();
                if (infoDB is null) return null;
                return new JsonResult()
                {
                    Data = new { Name = infoDB.InfoName, Category = infoDB.InfoCategory },
                    JsonRequestBehavior = JsonRequestBehavior.DenyGet
                };
            }
        }
        [HttpPost]
        public string EditProductInfo(InfoModel info)
        {
            if (Session["login"] is null) return "";

            if (String.IsNullOrEmpty(info.InfoName) || String.IsNullOrEmpty(info.InfoCategory))
            {
                return "Vui lòng nhập đầy đủ thông tin";
            }

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                INFO i = new INFO();
                if (info.IdInfo > 0) i = db.INFOes.Where(x => x.IdInfo == info.IdInfo).FirstOrDefault();
                if (i is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                i.InfoName = info.InfoName;
                i.InfoCategory = info.InfoCategory.ToUpper();
                if (info.IdInfo == 0) db.INFOes.Add(i);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        [HttpDelete]
        public string DeleteProductInfo(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var info = db.INFOes.Where(x => x.IdInfo == id).FirstOrDefault();
                if (info is null) return "Không tìm thấy đối tượng này";
                db.INFOes.Remove(info);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeleteProduct(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var product = db.PRODUCTs.Where(x => x.IdProduct == id).FirstOrDefault();

                int idRole = ((USER)Session["login"]).IdRole;
                if (idRole != 1) return "Bạn không có quyền xóa";

                if (product is null) return "Không tìm thấy đối tượng này";
                db.PRODUCTs.Remove(product);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeleteNews(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var news = db.NEWS.Where(x => x.IdNews == id).FirstOrDefault();
                if (news is null) return "Không tìm thấy đối tượng này";
                db.NEWS.Remove(news);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }


        [HttpDelete]
        public string DeleteComment(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var comment = db.COMMENT_PRODUCT.Where(x => x.IdComment == id).FirstOrDefault();
                if (comment is null) return "Không tìm thấy đối tượng này";
                db.COMMENT_PRODUCT.Remove(comment);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpPost]
        public string AccpetComment(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var comment = db.COMMENT_PRODUCT.Where(x => x.IdComment == id).FirstOrDefault();
                if (comment is null) return "Không tìm thấy đối tượng này";
                comment.CommentStatus = true;
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpPost]
        public string AccpetReview(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var review = db.REVIEW_PRODUCT.Where(x => x.IdReview == id).FirstOrDefault();
                if (review is null) return "Không tìm thấy đối tượng này";
                review.ReviewStatus = true;
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpPost]
        public string AccpetOrder(int id)
        {
            if (Session["login"] is null) return null;
           
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var order = db.ORDERs.Where(x => x.IdOrder == id).FirstOrDefault();
                if (order is null) return "Không tìm thấy đối tượng này";
                try
                {
                    if (order.IdStatus != 3) throw new Exception("Chỉ có đơn hàng đang giao mới được duyệt");
                    order.IdStatus = 4;

                    ORDER_HISTORY history = new ORDER_HISTORY();
                    history.IdOrder = id;
                    history.IdUser = (Session["login"] as USER).IdUser;
                    history.IdStatus = order.IdStatus;
                    history.DateHistory = DateTime.Now;
                    order.ORDER_HISTORY.Add(history);
                    db.SaveChanges();
                    //SendMail.Send(order.CUSTOMER.CustomerEmail, "Quyet-Shop đã nhận đơn hàng: #" + order.IdOrder, body);
                    //result.Success = true;
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        [HttpPost]
        public string DenyOrder(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var order = db.ORDERs.Where(x => x.IdOrder == id).FirstOrDefault();
                if (order is null) return "Không tìm thấy đối tượng này";
                try
                {
                    if (order.IdStatus == 4) throw new Exception("Đơn hàng này đã hoàn thành, không từ chối được");
                    order.IdStatus = 5;

                    ORDER_HISTORY history = new ORDER_HISTORY();
                    history.IdOrder = id;
                    history.IdUser = (Session["login"] as USER).IdUser;
                    history.IdStatus = order.IdStatus;
                    history.DateHistory = DateTime.Now;
                    order.ORDER_HISTORY.Add(history);

                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpPost]
        public string DeliveryOrder(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var order = db.ORDERs.Where(x => x.IdOrder == id).FirstOrDefault();
                if (order is null) return "Không tìm thấy đối tượng này";
                try
                {
                    if (order.IdStatus != 1 && order.IdStatus != 2) throw new Exception("Đơn hàng này không giao được");
                    if (order.PRODUCT_ORDER.Any(x => String.IsNullOrEmpty(x.IMEI))) throw new Exception("Vui lòng nhập đủ IMEI để giao hàng");
                    order.IdStatus = 3;

                    ORDER_HISTORY history = new ORDER_HISTORY();
                    history.IdOrder = id;
                    history.IdUser = (Session["login"] as USER).IdUser;
                    history.IdStatus = order.IdStatus;
                    history.DateHistory = DateTime.Now;
                    order.ORDER_HISTORY.Add(history);

                    db.SaveChanges();
 


                    //Send Mail

                    string htmlString = @"<div> 
    <div class='aHl'></div>
    <div id=':ma' tabindex='-1'></div>
    <div id=':lz' class='ii gt'>
       <div id=':ly' class='a3s aiL msg-9062794841182693085'>
          <u></u>
          <div style='background-color:#ffffff'>
             <div style='background-color:#ffffff'>
                <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                   <tbody>
                      <tr>
                         <td>
                            <div style='margin:0px auto;max-width:600px'>
                               <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                                  <tbody>
                                     <tr>
                                        <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0;text-align:center'>
                                           <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                                          <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                             <tbody>
                                                                <tr>
                                                                   <td align='center' class='m_-9062794841182693085gr-headerviewonline-iugfot' style='font-size:0px;padding:20px 40px;word-break:break-word'>
                                                                      <div style='font-family:Sen,Arial,sans-serif;font-size:10px;font-style:normal;line-height:1;text-align:center;text-decoration:none;color:#000000'>
                                                                      
                                                                      </div>
                                                                   </td>
                                                                </tr>
                                                             </tbody>
                                                          </table>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </div>
                                        </td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                         </td>
                      </tr>
                   </tbody>
                </table>
                <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                   <tbody>
                      <tr>
                         <td>
                            <div style='margin:0px auto;max-width:600px'>
                               <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                                  <tbody>
                                     <tr>
                                        <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0 30px;text-align:center'>
                                           <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                                          <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                             <tbody>
                                                                <tr>
                                                                   <td style='font-size:0px;word-break:break-word'>
                                                                      <div style='height:10px'>&nbsp;</div>
                                                                   </td>
                                                                </tr>
                                                                <tr>
                                                                   <td align='left' class='m_-9062794841182693085gr-mltext-rvkcio' style='font-size:0px;padding:10px;word-break:break-word'>
                                                                      <div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;line-height:1.4;text-align:left;color:#000000'>
                                                                         <div style='text-align:center'>
                                                                            <p style='font-family:Arial;font-size:14px;margin-top:0px;margin-bottom:0px;font-weight:normal;color:#000000'><span style='font-family:Titan One,Arial Black,display'><span style='font-size:48px'>M-Store</span></span></p>
                                                                         </div>
                                                                      </div>
                                                                   </td>
                                                                </tr>
                                                                <tr>
                                                                   <td style='font-size:0px;word-break:break-word'>
                                                                      <div style='height:40px'>&nbsp;</div>
                                                                   </td>
                                                                </tr>
                                                             </tbody>
                                                          </table>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </div>
                                        </td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                         </td>
                      </tr>
                   </tbody>
                </table>
                <div style='margin:0px auto;max-width:600px'>
                   <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                      <tbody>
                         <tr>
                            <td style='border-bottom:6px solid #000000;border-left:6px solid #000000;border-right:6px solid #000000;border-top:6px solid #000000;direction:ltr;font-size:0px;padding:0 40px;text-align:center'>
                               <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                     <tbody>
                                        <tr>
                                           <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:42px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td align='left' class='m_-9062794841182693085gr-mltext-lfprud' style='font-size:0px;padding:0;word-break:break-word'>
                                                          <div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;line-height:1.6;text-align:left;color:#000000'>
                                                             <div style='text-align:center'>
                                                                <p style='font-family:Arial;font-size:14px;margin-top:0px;margin-bottom:0px;font-weight:normal;color:#000000'><span style='font-family:Comic Sans MS'><span style='font-size:22px'>Mã code đặt hàng của bạn</span></span></p>
                                                             </div>
                                                          </div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td align='left' class='m_-9062794841182693085gr-mltext-vvlroh' style='font-size:0px;padding:0;word-break:break-word'>
                                                          <div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;line-height:1.2;text-align:left;color:#000000'>
                                                             <div style='text-align:center'>
                                                                <p style='font-family:Arial;font-size:14px;margin-top:0px;margin-bottom:0px;font-weight:normal;color:#000000'><span style='font-family:Oswald,Arial,sans-serif'><span style='font-size:64px'><strong>" + id + @"</strong></span></span></p>
                                                             </div>
                                                          </div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:42px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </td>
                                        </tr>
                                     </tbody>
                                  </table>
                               </div>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
                <div style='margin:0px auto;max-width:600px'>
                   <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                      <tbody>
                         <tr>
                            <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0;text-align:center'>
                               <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                     <tbody>
                                        <tr>
                                           <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:40px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </td>
                                        </tr>
                                     </tbody>
                                  </table>
                               </div>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
                <div style='background:#f9f9f9;background-color:#f9f9f9;margin:0px auto;max-width:600px'>
                   <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#f9f9f9;background-color:#f9f9f9;width:100%'>
                      <tbody>
                         <tr>
                            <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0 40px;text-align:center'>
                               <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                     <tbody>
                                        <tr>
                                           <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:40px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td align='left' class='m_-9062794841182693085gr-mltext-tqbmda' style='font-size:0px;padding:0;word-break:break-word'>
                                                          <div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;line-height:1.6;text-align:left;color:#000000'>
                                                             <div style='text-align:center'>
                                                                <p style='font-family:Arial;font-size:14px;margin-top:0px;margin-bottom:0px;font-weight:normal;color:#000000'><span style='font-family:Oswald,Arial,sans-serif'><span style='font-size:20px'>Cảm ơn bạn đã tin tưởng và mua hàng tại shop chúng tôi 💗💗💗</span></span></p>
                                                             </div>
                                                          </div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:20px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td align='center' style='font-size:0px;padding:0;word-break:break-word'>
                                                          <table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-collapse:separate;line-height:100%'>
                                                             <tbody>
                                                                <tr>
                                                                   <td align='center' bgcolor='#000000' role='presentation' style='border:none;border-bottom:0 none #000000;border-left:0 none #000000;border-radius:5px;border-right:0 none #000000;border-top:0 none #000000;font-style:normal;background:#000000;word-break:break-word' valign='middle'>
                                                             <a href ='https://www.facebook.com/Official.Account.NCQ/'>         <p style='display:inline-block;background:#000000;color:#ffffff;font-family:Oswald,Arial,sans-serif;font-size:16px;font-style:normal;font-weight:normal;line-height:100%;margin:0;text-decoration:none;text-transform:none;padding:12px 20px;border-radius:5px'>SHOP NOW</p> </a>
                                                                   </td>
                                                                </tr>
                                                             </tbody>
                                                          </table>
                                                       </td>
                                                    </tr>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:25px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </td>
                                        </tr>
                                     </tbody>
                                  </table>
                               </div>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
                <div style='margin:0px auto;max-width:600px'>
                   <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                      <tbody>
                         <tr>
                            <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0 40px;text-align:center'>
                               <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                     <tbody>
                                        <tr>
                                           <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='font-size:0px;word-break:break-word'>
                                                          <div style='height:20px'>&nbsp;</div>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </td>
                                        </tr>
                                     </tbody>
                                  </table>
                               </div>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
                <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                   <tbody>
                      <tr>
                         <td>
                            <div style='margin:0px auto;max-width:600px'>
                               <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                                  <tbody>
                                     <tr>
                                        <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0;text-align:center'>
                                           <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0'>
                                                          <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                             <tbody>
                                                                <tr>
                                                                   <td align='center' style='font-size:0px;padding:5px;word-break:break-word'>
                                                                      <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='float:none;display:inline-table'>
                                                                         <tbody>
                                                                            <tr>
                                                                               <td style='padding:0 10px;vertical-align:middle'>
                                                                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-radius:0;width:30px'>
                                                                                     <tbody>
                                                                                        <tr>
                                                                                           <td style='font-size:0;height:30px;vertical-align:middle;width:30px'><a href='https://facebook.com' target='_blank' data-saferedirecturl='https://www.google.com/url?q=https://facebook.com&amp;source=gmail&amp;ust=1605796432285000&amp;usg=AFQjCNFFtJ3lxIzmD-7F-UTo_eTp_WzFtg'><img height='30' src='https://ci5.googleusercontent.com/proxy/n8-iixEM8oAAUVry3Ey3fu852ydvSGv67WHj0QW8JdKu_ctoZJ3kozaLEWG3Akcrc3zZCrva1f1HlEXrywYMZ8aNwxy3g1OX8tUi3qkHeKRp5OLacc73cQqGJj22BPMrwcRgf7tWgQ=s0-d-e1-ft#https://app.getresponse.com/images/common/templates/messages/v2/social/facebook1.png' style='border-radius:0;display:block' width='30' class='CToWUd'></a></td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                  </table>
                                                                               </td>
                                                                            </tr>
                                                                         </tbody>
                                                                      </table>
                                                                      <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='float:none;display:inline-table'>
                                                                         <tbody>
                                                                            <tr>
                                                                               <td style='padding:0 10px;vertical-align:middle'>
                                                                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-radius:0;width:30px'>
                                                                                     <tbody>
                                                                                        <tr>
                                                                                           <td style='font-size:0;height:30px;vertical-align:middle;width:30px'><a href='https://twitter.com' target='_blank' data-saferedirecturl='https://www.google.com/url?q=https://twitter.com&amp;source=gmail&amp;ust=1605796432286000&amp;usg=AFQjCNHQbEyiBdRjXvHCqOTRisUhjEy7-w'><img height='30' src='https://ci5.googleusercontent.com/proxy/49s8aRLyRxOe9K_0vK3LWgphNuPutsk8iOZGLfSfg9YM9pJkwGadzChUe2uDutDBaW-IKPJvUPiocnSa-4n71kAKcTCjHpZaMOcvkX1-wrDH0G_DYELCFXgL3uLkrq_uSCZyjsDK=s0-d-e1-ft#https://app.getresponse.com/images/common/templates/messages/v2/social/twitter1.png' style='border-radius:0;display:block' width='30' class='CToWUd'></a></td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                  </table>
                                                                               </td>
                                                                            </tr>
                                                                         </tbody>
                                                                      </table>
                                                                      <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='float:none;display:inline-table'>
                                                                         <tbody>
                                                                            <tr>
                                                                               <td style='padding:0 10px;vertical-align:middle'>
                                                                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-radius:0;width:30px'>
                                                                                     <tbody>
                                                                                        <tr>
                                                                                           <td style='font-size:0;height:30px;vertical-align:middle;width:30px'><a href='https://instagram.com' target='_blank' data-saferedirecturl='https://www.google.com/url?q=https://instagram.com&amp;source=gmail&amp;ust=1605796432286000&amp;usg=AFQjCNGJ2-IBr5eUsE6GCPJw1cRDrlZRyA'><img height='30' src='https://ci3.googleusercontent.com/proxy/UDussVsf-HUodd5GyIJLeIS7pCAQohTxaNn8jFamj1h2MrpwcO_17ba5EuHTF033opfXQ6tLFtF41o5pgR9mq2Cv0iHX4m_eOBE9wFnSlmteIk6WZcbBZ9HdVSmOQ4poN0fWC5bHCzs=s0-d-e1-ft#https://app.getresponse.com/images/common/templates/messages/v2/social/instagram1.png' style='border-radius:0;display:block' width='30' class='CToWUd'></a></td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                  </table>
                                                                               </td>
                                                                            </tr>
                                                                         </tbody>
                                                                      </table>
                                                                      <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='float:none;display:inline-table'>
                                                                         <tbody>
                                                                            <tr>
                                                                               <td style='padding:0 10px;vertical-align:middle'>
                                                                                  <table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-radius:0;width:30px'>
                                                                                     <tbody>
                                                                                        <tr>
                                                                                           <td style='font-size:0;height:30px;vertical-align:middle;width:30px'><a href='https://youtube.com' target='_blank' data-saferedirecturl='https://www.google.com/url?q=https://youtube.com&amp;source=gmail&amp;ust=1605796432286000&amp;usg=AFQjCNHmucfKDA3wWiwV0fCx0J41mIOqWw'><img height='30' src='https://ci3.googleusercontent.com/proxy/uwAJjZu0lzW3txnXHZ48UacWfjT2kQD4UuTPDq2Bh84_hkTE9GwzyecPbAh8P5ES7bbGlI1KlxRSTFjS2rzyW4FyLcWIXRuq7P-QITs9a7lCY8Oh_8Mkm1ILobDong3lKKdJz-go=s0-d-e1-ft#https://app.getresponse.com/images/common/templates/messages/v2/social/youtube1.png' style='border-radius:0;display:block' width='30' class='CToWUd'></a></td>
                                                                                        </tr>
                                                                                     </tbody>
                                                                                  </table>
                                                                               </td>
                                                                            </tr>
                                                                         </tbody>
                                                                      </table>
                                                                   </td>
                                                                </tr>
                                                                <tr>
                                                                   <td align='center' class='m_-9062794841182693085gr-footer-yppypo' style='font-size:0px;padding:0;word-break:break-word'>
                                                                      <div style='font-family:Roboto,Arial,sans-serif;font-size:10px;font-style:normal;line-height:1;text-align:center;text-decoration:none;color:#c0c0c0'>
                                                                         <div>280, An Dương Vương, Phường 4, Quận 5, TP.Hồ Chí Minh, Vietnam<br> 
                                                                      </div>
                                                                   </td>
                                                                </tr>
                                                             </tbody>
                                                          </table>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </div>
                                        </td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                         </td>
                      </tr>
                   </tbody>
                </table>
                <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                   <tbody>
                      <tr>
                         <td>
                            <div style='margin:0px auto;max-width:600px'>
                               <table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='width:100%'>
                                  <tbody>
                                     <tr>
                                        <td style='border-bottom:0 none #000000;border-left:0 none #000000;border-right:0 none #000000;border-top:0 none #000000;direction:ltr;font-size:0px;padding:0 10px;text-align:center'>
                                           <div class='m_-9062794841182693085mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>
                                              <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                 <tbody>
                                                    <tr>
                                                       <td style='background-color:transparent;border-bottom:none;border-left:none;border-right:none;border-top:none;vertical-align:top;padding:0 40px'>
                                                          <table border='0' cellpadding='0' cellspacing='0' role='presentation' width='100%'>
                                                             <tbody>
                                                                <tr>
                                                                   <td style='font-size:0px;word-break:break-word'>
                                                                      <div style='height:20px'>&nbsp;</div>
                                                                   </td>
                                                                </tr>
                                                             </tbody>
                                                          </table>
                                                       </td>
                                                    </tr>
                                                 </tbody>
                                              </table>
                                           </div>
                                        </td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                         </td>
                      </tr>
                   </tbody>
                </table>
                <table align='center' style='font-family:'Roboto',Helvetica,sans-serif;font-weight:400;letter-spacing:.018em;text-align:center;font-size:10px'>
                   <tbody>
                      <tr>
                         <td style='padding-bottom:20px'>
                            <br>
                            <div style='color:#939598'>Created by NCQ</div>
                            
                         </td>
                      </tr>
                   </tbody>
                </table>
             </div>
          </div>
       </div>
       <div class='yj6qo'></div>
       <div class='yj6qo'></div>
       <div class='yj6qo'></div>
       <div class='yj6qo'></div>
    </div>
    <div id=':me' class='ii gt' style='display:none'>
       <div id=':mf' class='a3s aiL undefined'></div>
    </div>
    <div class='hi'></div>
   </div>
                     ";


                    string body = htmlString;
                    body = String.Format(body, order.CUSTOMER.CustomerName, history.DateHistory);
                    MailMessage mail = new MailMessage();
                    MailAddress fromAddress = new MailAddress(order.CUSTOMER.CustomerEmail, "M-Store");
                   
                    MailAddress toAddress = null;
                    mail.From = fromAddress;
                   
                    toAddress = new MailAddress(order.CUSTOMER.CustomerEmail, "Cấp thông tin tài khoản cho nhân viên");
                    mail.Subject = "M-Store Xác Nhận Đơn Hàng " + order.IdOrder;
                   
                    mail.Body = body;
                    mail.To.Add(toAddress);
                    mail.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient();
                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.Port = 587;
                    smtpClient.EnableSsl = true;
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.Credentials = new NetworkCredential("quyetnc99@gmail.com", "QuyetClimax@123");
                    smtpClient.Send(mail);



                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }


        [HttpPost]
        public string UpdateImei(ProductOrderModel data)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var product = db.PRODUCT_ORDER.Where(x => x.IdOrder == data.IdOrder && x.IdProduct == data.IdProduct).FirstOrDefault();
                if (product is null) return "Không tìm thấy đối tượng này";
                try
                {
                    var order = db.ORDERs.Where(x => x.IdOrder == data.IdOrder).FirstOrDefault();
                    if (order.IdStatus == 5 || order.IdStatus == 4) throw new Exception("Đơn hàng này đã không giao được");
                    product.IMEI = data.IMEI;
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeleteReview(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var review = db.REVIEW_PRODUCT.Where(x => x.IdReview == id).FirstOrDefault();
                if (review is null) return "Không tìm thấy đối tượng này";
                db.REVIEW_PRODUCT.Remove(review);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        

        [HttpDelete]
        public string DeleteCustomer(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var customer = db.CUSTOMERs.Where(x => x.IdCustomer == id).FirstOrDefault();
                if (customer is null) return "Không tìm thấy đối tượng này";
                db.CUSTOMERs.Remove(customer);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeletePromotion(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var promotion = db.PROMOTIONs.Where(x => x.IdPromotion == id).FirstOrDefault();
                if (promotion is null) return "Không tìm thấy đối tượng này";
                
                db.PROMOTIONs.Remove(promotion);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeleteGiftcode(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var code = db.GIFTCODEs.Where(x => x.IdCode == id).FirstOrDefault();
                if (code is null) return "Không tìm thấy đối tượng này";
                db.GIFTCODEs.Remove(code);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        public JsonResult GetCategoryNews(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var categoryDB = db.CATEGORY_NEWS.Where(x => x.IdCategory == id).FirstOrDefault();
                if (categoryDB is null) return null;
                return new JsonResult()
                {
                    Data = new { Name = categoryDB.CategoryName, Icon = categoryDB.CategoryIcon },
                    JsonRequestBehavior = JsonRequestBehavior.DenyGet
                };
            }
        }
        [HttpPost]
        public string EditCategoryNews(CategoryModel category)
        {
            if (Session["login"] is null) return "";

            if (String.IsNullOrEmpty(category.CategoryName) || String.IsNullOrEmpty(category.CategoryIcon))
            {
                return "Vui lòng nhập đầy đủ thông tin";
            }

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                CATEGORY_NEWS c = new CATEGORY_NEWS();
                if (category.IdCategory > 0) c = db.CATEGORY_NEWS.Where(x => x.IdCategory == category.IdCategory).FirstOrDefault();
                if (c is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                c.CategoryName = category.CategoryName;
                c.CategoryIcon = category.CategoryIcon;
                c.IdUser = ((USER)Session["login"]).IdUser;
                if (category.IdCategory == 0) db.CATEGORY_NEWS.Add(c);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        [HttpDelete]
        public string DeleteCategoryNews(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var category = db.CATEGORY_NEWS.Where(x => x.IdCategory == id).FirstOrDefault();
                if (category is null) return "Không tìm thấy đối tượng này";
                db.CATEGORY_NEWS.Remove(category);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }


        public JsonResult GetCategory(int id)
        {
            //if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var categoryDB = db.CATEGORY_PRODUCT.Where(x => x.IdCategory == id).FirstOrDefault();
                if (categoryDB is null) return null;
                return new JsonResult()
                {
                    Data = new { Name = categoryDB.CategoryName, Icon = categoryDB.CategoryIcon },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }
        }
        [HttpPost]
        public string EditCategory(CategoryModel category)
        {
            if (Session["login"] is null) return "";

            if (String.IsNullOrEmpty(category.CategoryName) || String.IsNullOrEmpty(category.CategoryIcon))
            {
                return "Vui lòng nhập đầy đủ thông tin";
            }

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {

                CATEGORY_PRODUCT c = new CATEGORY_PRODUCT();
                if (category.IdCategory > 0) c = db.CATEGORY_PRODUCT.Where(x => x.IdCategory == category.IdCategory).FirstOrDefault();
                if (c is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                c.CategoryName = category.CategoryName;
                c.CategoryIcon = category.CategoryIcon;
                if (category.IdCategory == 0) db.CATEGORY_PRODUCT.Add(c);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        [HttpDelete]
        public string DeleteCategory(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var category = db.CATEGORY_PRODUCT.Where(x => x.IdCategory == id).FirstOrDefault();
                if (category is null) return "Không tìm thấy đối tượng này";
                db.CATEGORY_PRODUCT.Remove(category);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        [HttpDelete]
        public string DeleteUser(int id)
        {
            if (Session["login"] is null) return null;
            int idRole = ((USER)Session["login"]).IdRole;
            if (idRole != 1) return "Bạn không có quyền xóa";

            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var user = db.USERs.Where(x => x.IdUser == id).FirstOrDefault();
                if (user is null) return "Không tìm thấy đối tượng này";
                db.USERs.Remove(user);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }

        public JsonResult GetUser(int id)
        {
            if (Session["login"] is null) return null;
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var userDB = db.USERs.Where(x => x.IdUser == id).FirstOrDefault();
                if (userDB is null) return null;
                return new JsonResult()
                {
                    Data = new { IdRole = userDB.IdRole, Fullname = userDB.Fullname, Username = userDB.Username },
                    JsonRequestBehavior = JsonRequestBehavior.DenyGet
                };
            }
        }
        [HttpPost]
        public string EditUser(UserModel user)
        {
            if (Session["login"] is null) return "";

            if (String.IsNullOrEmpty(user.Fullname) || String.IsNullOrEmpty(user.Username) || (String.IsNullOrEmpty(user.Password) && user.IdUser == 0))
            {
                return "Vui lòng nhập đầy đủ thông tin";
            }
            
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                if (db.USERs.Any(x => x.Username.Equals(user.Username) && x.IdUser != user.IdUser)) return "Tài khoản này đã tồn tại";
                USER u = new USER();
                if (user.IdUser > 0) u = db.USERs.Where(x => x.IdUser == user.IdUser).FirstOrDefault();
                if (u is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                u.Username = user.Username;
                u.Fullname = user.Fullname;
                u.IdRole = user.IdRole;
                if (!String.IsNullOrEmpty(user.Password)) u.Password = user.Password;
                if (user.IdUser == 0) db.USERs.Add(u);
                try
                {
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
        [HttpPost]
        public string ReviewProduct(REVIEW_PRODUCT review )
        {
            using(THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                REVIEW_PRODUCT reviewCus = new REVIEW_PRODUCT();
                //if (review.IdReview > 0) reviewCus = db.REVIEW_PRODUCT.Where(x => x.IdReview == review.IdReview).FirstOrDefault();
                //if (reviewCus is null) return "Dữ liệu bất thường vui lòng thử lại sau";
                //var idCustom = db.CUSTOMERs.Where(x=>x.CustomerPhone.Equals())
            
                reviewCus.IdCustomer = review.IdCustomer;
                reviewCus.IdProduct = review.IdProduct;
                reviewCus.ReviewContent = review.ReviewContent;
                reviewCus.ReviewDate = DateTime.Now;
                reviewCus.IdUser = 3;
                reviewCus.ReviewPoint = review.ReviewPoint;
                reviewCus.ReviewStatus = true;

                
                try
                {
                    db.REVIEW_PRODUCT.Add(reviewCus);
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }
            }
            return "ok";
        }
            
        [HttpGet]
        public JsonResult checkPhone( string phone)
          {
            ApiResultObj result = new ApiResultObj();
            using(THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var custom = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(phone)).FirstOrDefault();
                List<OrderModalCheck> DataArr = new List<OrderModalCheck>();
                if (custom is null)
                {
                    result.Success = false;
                    result.Message = "Số điện thoại không tồn tại trong hệ thống. Yêu cầu xem lại!";
                    //return Json(result);
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
                else
                {
                  
                    result.Success = true;
                    result.Message = "Thành công";
                 
                    Random rnd = new Random();
                    int codee = rnd.Next(1000, 9999);
                    CODE cd = new CODE();
                    cd.maCode = codee.ToString();

                    db.CODEs.Add(cd);
                    db.SaveChanges();
                    SMSController sms = new SMSController();
                    string rs = sms.SendSMS(codee);



                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }    

              
            }
        

        }

        [HttpGet]
        public JsonResult checkCodeSMS (string phone, string code )
        {
            ApiResultObj result = new ApiResultObj();
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                var codeD = db.CODEs.Where(x => x.maCode.Equals(code)).FirstOrDefault();
                if (codeD is null)
                {
                    result.Success = false;
                    result.Message = "Mã code không đúng";
                    //return Json(result);
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
                else
                {
                    db.CODEs.Remove(codeD);
                    db.SaveChanges();
                    var custom = db.CUSTOMERs.Where(x => x.CustomerPhone.Equals(phone)).FirstOrDefault();
                    List<OrderModalCheck> DataArr = new List<OrderModalCheck>();
                    var order = db.ORDERs.Where(x => x.IdCustomer == custom.IdCustomer).OrderByDescending(y => y.IdOrder).ToList();
                    foreach (var od in order)
                    {
                        OrderModalCheck odNew = new OrderModalCheck();

                        odNew.IdCustomer = od.IdCustomer;
                        odNew.IdOrder = od.IdOrder;
                        odNew.IdPayment = od.IdPayment;
                        odNew.DateOrder = od.DateOrder.Value.ToString(" HH:mm dd/MM/yyyy");
                        odNew.IdStatus = od.IdStatus;
                        odNew.Total = od.Total;


                        DataArr.Add(odNew);
                    }

                    result.Data = DataArr;
                    result.Success = true;
                    result.Message = "Thành công";
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                }
            }
                
        }
        //[HttpGet]
        //public JsonResult<ApiMobileArray> GetNK ( )
        //{
        //    ApiMobileArray result = new ApiMobileArray();
        //    List<NienKhoa> DataArr = new List<NienKhoa>();
        //    using (DACSEntities db = new DACSEntities())
        //    {

        //        var lstNK = db.NIENKHOAs.ToList();
        //        foreach (var nk in lstNK)
        //        {
        //            NienKhoa nkNew = new NienKhoa();
        //            List<Nganh> NganhArr = new List<Nganh>();
        //            nkNew.IDNIENKHOA = nk.IDNIENKHOA;
        //            nkNew.NAMENIENKHOA = nk.NAMENIENKHOA;
        //            var nganhList = db.NGANHs.Where(x => x.IDNIENKHOA == nk.IDNIENKHOA).ToList();

        //            foreach (var nganh in nganhList)
        //            {
        //                Nganh nganhNew = new Nganh();
        //                nganhNew.IDNGANH = nganh.IDNGANH;
        //                nganhNew.NAMENGANH = nganh.NAMENGANH;
        //                NganhArr.Add(nganhNew);
        //            }
        //            nkNew.LISTNGANH = NganhArr;
        //            DataArr.Add(nkNew);
        //        }
        //    }
        //    result.Data = DataArr;
        //    result.Success = true;
        //    result.Message = "Lấy niên khóa thành công!";
        //    return Json(result);
        //}


        [HttpGet]
        public JsonResult FilterByPrice ( string val )
        {
            ApiResultObj result = new ApiResultObj();
            int v1, v2;
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
                default:
                    result.Success = false;
                    result.Message = "Val Price NoExist";
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };
                    break;
            }


            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
                List<PRODUCT> product;
                if (v2 == -1){
                     product = db.PRODUCTs.Where(x => x.ProductPrice > v1).ToList();
            }else
                {
                     product = db.PRODUCTs.Where(x => x.ProductPrice > v1 && x.ProductPrice <= v2).ToList();
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

                return new JsonResult()
                {
                    Data = result,
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }

             
            
        }
       

        [HttpGet]
        public JsonResult CheckGiftCode (string giftcode)
        {

            ApiResultObj result = new ApiResultObj();
            using (THUONGMAIDIENTUEntities db = new THUONGMAIDIENTUEntities())
            {
               
                var giftCode = db.GIFTCODEs.Where(x => x.Code == giftcode).FirstOrDefault();

                if (giftCode is null || giftCode.Status == true)
                {

                    result.Success = false;
                    result.Message = "Mã Không Tồn Tại Hoặc Đã Được Sử Dụng";
           
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };


                }
                else
                {
                    object DT = new { value = giftCode.Discount};

                    result.Success = true;
                    result.Message = "Apply Mã Thành Công";
                    result.Data = DT;
                    return new JsonResult()
                    {
                        Data = result,
                        JsonRequestBehavior = JsonRequestBehavior.AllowGet
                    };

                }
            }
                
          
        }
    }
}
 