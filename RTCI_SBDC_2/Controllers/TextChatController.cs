using RTCI_SBDC_2.Models;
using RTCI_SBDC_2.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace RTCI_SBDC_2.Controllers
{
    public class TextChatController : Controller
    {
        RTICRepository db = new RTICRepository();

        // GET: Home  
        public ActionResult Index()
        {
            if (Session["userid"] == null)
            {
                return RedirectToAction("login");
            }
            else
            {
                return View();
            }
        }
        
        public ActionResult login()
        {

            return View("Login");
        }


       

        [HttpPost]
        public JsonResult friendlist()
        {
            int id = Convert.ToInt32(Session["userid"].ToString());
            List<UserModel> users = db.GetAdvisors(id);
            List<ListItem> userlist = new List<ListItem>();
            foreach (var item in users)
            {
                userlist.Add(new ListItem
                {
                    Value = item.email.ToString(),
                    Text = item.email.ToString()

                });
            }
            return Json(userlist);
        }
    }
}
