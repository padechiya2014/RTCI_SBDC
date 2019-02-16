using RTCI_SBDC_2.Models;
using RTCI_SBDC_2.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace RTCI_SBDC_2.Controllers
{
    public class LoginController : Controller
    {


        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon(); // it will clear the session at the end of request
            return RedirectToAction("Index");
        }


        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(UserLogin userModel)
        {
            RTICRepository db = new RTICRepository();

            bool exist = db.GetAllUserLogin(userModel.FirstName, userModel.LastName);
           
            if (exist)
            {
                return View("Landing");
            }
            else
            {
                ModelState.AddModelError("", "Invalid username or password");
                return View("Index");
            }

        }

        //public ActionResult LogOut()
        //{
        //    int userId = (int)Session["userID"];
        //    Session.Abandon();
        //    return RedirectToAction("Index", "Login");
        //}

        // GET: Login/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Login/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Login/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Login/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Login/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Login/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Login/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
