using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Allinone.Models;

namespace Allinone.Controllers
{
    public class mcvController : Controller
    {
        //
        // GET: /mcv/
        db_rinkalEntities dc = new db_rinkalEntities();
        string filename, path, fullpath, Temp;
        public ActionResult Index()
        {

            return View();
        }
        [HttpGet]
        public ActionResult Insert()
        {
            ViewBag.state = new SelectList(dc.tbl_state, "SID", "StateName");
            return View();
        }
        public JsonResult citybyid(int id)
        {
            var p = from n in dc.tbl_city where n.SID == id select n;
            return Json(new SelectList(p.ToArray(), "CID", "CityName"), JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Insert(First f, HttpPostedFileBase file1)
        {
            ViewBag.state = new SelectList(dc.tbl_state, "SID", "StateName");

            tbl_allinone tr = new tbl_allinone();
            tr.First_Name = f.fname;
            tr.Last_Name = f.lname;
            tr.User_Name = f.uname;
            tr.Password = f.pwd;
            tr.Gender = f.gender;

            string str = "";
            if (f.cric == true)
            {
                if (str == "")
                {
                    str = "Cricket";
                }
                else
                {
                    str = str+"," + "Cricket";
                }
            }
            if (f.foot == true)
            {
                if (str == "")
                {
                    str = "Football";
                }
                else
                {
                    str = str+"," + "Football";
                }
            }
            if (f.Hocky == true)
            {
                if (str == "")
                {
                    str = "Hockey";
                }
                else
                {
                    str = str + "," + "Hockey";
                }
            }
            if (f.Table_Tennis == true)
            {
                if (str == "")
                {
                    str = "Table-Tennis";
                }
                else
                {
                    str = str + "," + "Table-Tennis";
                }
            }
            tr.Hobby = str;
            tr.State = f.state;
            tr.City = f.City;
            if (file1 != null)
            {
                filename = file1.FileName;
                path = Server.MapPath("~/im/");
                fullpath = path + filename;

                file1.SaveAs(fullpath);
                Temp = "~/im/" + filename;
            }
            else
            {
                Temp = "";
            }
            tr.Image = Temp;


            dc.tbl_allinone.Add(tr);
            dc.SaveChanges();
            return View();
        }
        [HttpGet]
        public ActionResult getdata()
        {
            //var p = from n in dc.tbl_allinone join m in dc.tbl_state on n.State equals m.SID join v in dc.tbl_city on n.City equals v.CID select new {n.Id, n.First_Name, n.Last_Name, n.Password, n.User_Name, n.Gender, n.Hobby, n.Image, m.StateName, v.CityName };
           // for display name
            var p = from n in dc.tbl_allinone select n;
            // for display ID
            var model = new List<First>();
            foreach (var item in p)
            {
                First f = new First();
                f.id = item.Id;
                f.fname = item.First_Name;
                f.lname = item.Last_Name;
                f.uname = item.User_Name;
                f.pwd = item.Password;
                f.gender = item.Gender;
                f.hobby = item.Hobby;
                //f.SName = item.StateName; // for display Name
                //f.CName = item.CityName;  // for dicplay Name
                f.state = int.Parse(item.State.ToString());
                f.City = int.Parse(item.City.ToString());
                f.image = item.Image;

                model.Add(f);
            }
            return View(model);
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {


            ViewBag.State = new SelectList(dc.tbl_state, "SID", "StateName");
            ViewBag.city = new SelectList(dc.tbl_city, "CID", "CityName");
            //    var p = from n in dc.tbl_city where n.SID == id select n;


            var q = (from n in dc.tbl_allinone where n.Id == id select n).FirstOrDefault();



            First f = new First();
            //f.id = q.Id;
            f.fname = q.First_Name;
            f.lname = q.Last_Name;
            f.uname = q.User_Name;
            f.pwd = q.Password;
            f.gender = q.Gender;

            string s = q.Hobby;
            string[] arr = s.Split(',');

            for (int i = 0; i < arr.Length; i++)
            {
                if (arr[i] == "Cricket")
                {
                    f.cric = true;
                }
                if (arr[i] == "Football")
                {
                    f.foot = true;
                }
                if (arr[i] == "Hockey")
                {
                    f.Hocky = true;
                }
            }

            f.state = int.Parse(q.State.ToString());
          //  var abc = from n in dc.tbl_state where n.SID == q.State select n;
          //  ViewBag.State = new SelectList(abc, "SID", "StateName");


            f.City = int.Parse(q.City.ToString());
            f.image = q.Image;

            return View(f);

        }
       
    }

}
