using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace contain
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;

            Console.WriteLine("Enter your string");
            str = (string)Console.ReadLine();

            if (str.Contains("r"))
            {
                Console.WriteLine("Available");
            }
            else
            {
                Console.WriteLine("Not Available");
            }
            Console.ReadLine();
        }
    }
}
