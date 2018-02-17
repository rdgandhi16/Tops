using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Toupper_lower
{
    class Program
    {
        static void Main(string[] args)
        {
            //string str;
            //Console.WriteLine("Enter your string");
            //str = (string)Console.ReadLine();

            //Console.WriteLine(str.ToUpper());
            //Console.ReadLine();

            string str;
            Console.WriteLine("Enter your string");
            str = (string)Console.ReadLine();

            Console.WriteLine(str.ToLower());
            Console.ReadLine();
        }
    }
}
