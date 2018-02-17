using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Start_Endwith
{
    class Program
    {
        static void Main(string[] args)
        {
            //string str;
            //Console.WriteLine("Enter your string");
            //str = (string)Console.ReadLine();

            //if (str.StartsWith("ri"))
            //{
            //    Console.WriteLine("Its Strat with ri");
            //}
            //else
            //{
            //    Console.WriteLine("Its not Start with ri");
            //}
            //Console.ReadLine();

            string str;
            Console.WriteLine("Enter your string");
            str = (string)Console.ReadLine();

            if (str.EndsWith("ma"))
            {
                Console.WriteLine("Its end with ma");
            }
            else
            {
                Console.WriteLine("Its not end with ma");
            }
            Console.ReadLine();
        }
    }
}
