using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Allinone.Models
{
    public class First
    {
            
        public int id { get; set; }
        public string fname { get; set; }
        public string lname { get; set; }
        public string uname { get; set; }
        public string pwd { get; set; }
        public string gender { get; set; }
        public string hobby { get; set; }
        public bool cric { get; set; }
        public bool foot { get; set; }
        public bool Table_Tennis { get; set; }
        public bool Hocky { get; set; }
        public int state { get; set; }
        public int City { get; set; }
        public string image { get; set; }

        public int SID { get; set; }
        public string SName { get; set; }

        public int CID { get; set; }
        public string CName { get; set; }
    }
}