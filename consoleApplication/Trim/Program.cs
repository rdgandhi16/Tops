﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trim
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;

            Console.WriteLine("Enter your Trim");
            str = (string)Console.ReadLine();

            Console.WriteLine(str.TrimStart());
            Console.ReadLine();
        }
    }
}
