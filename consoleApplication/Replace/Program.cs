using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Replace
{
    class Program
    {
        static void Main(string[] args)
        {

            string str;
            Console.WriteLine("Enter your string");
            str = (string)Console.ReadLine();

            Console.WriteLine(str.Replace("RINKAL", "ROMA"));
            Console.ReadLine();
        }
    }
}
