using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;

namespace ThuongMaiDienTu.Controllers
{
    public class sitemapController : Controller
    {
        // GET: SiteMap
        public ActionResult Index()
        {
            //ReadSiteMap();
            ReadText();
            return View();
        }
        public void ReadSiteMap ( )
        {
            XmlDataDocument xmldoc = new XmlDataDocument();
            XmlNodeList xmlnode;
            int i = 0;
            List<Dictionary<string, string>> lst = new List<Dictionary<string, string>>();
            string str = null,path= AppDomain.CurrentDomain.BaseDirectory+@"Content\files\sitemap.xml";
            FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read);
            xmldoc.Load(fs);
            xmlnode = xmldoc.GetElementsByTagName("url");
            for (i = 0; i <= xmlnode.Count - 1; i++)
            {
                Dictionary<string, string> item = new Dictionary<string, string>();
                item["Path"] = xmlnode[i].ChildNodes.Item(0).InnerText.Trim();
                item["Date"] = xmlnode[i].ChildNodes.Item(1).InnerText.Trim();
                item["Priority"] = xmlnode[i].ChildNodes.Item(2).InnerText.Trim();
                lst.Add(item);
            }
            ViewBag.SiteMap = lst;
        }
        public void ReadText ( )
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + @"Content\files\sitemap.xml";
            string readText=System.IO.File.ReadAllText(path);
            ViewBag.Text = readText;
        }
    }
}