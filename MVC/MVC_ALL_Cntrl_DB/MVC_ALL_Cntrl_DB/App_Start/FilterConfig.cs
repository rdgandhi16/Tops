﻿using System.Web;
using System.Web.Mvc;

namespace MVC_ALL_Cntrl_DB
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}