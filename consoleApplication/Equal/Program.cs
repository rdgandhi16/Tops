using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Equal
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            string str1;

            Console.WriteLine("Enter Your String");
            str = (string)Console.ReadLine();
            Console.WriteLine("Enter another string");
            str1 = (string)Console.ReadLine();

            if (str.Equals(str1))
            {
                Console.WriteLine("Its Eqaul");
            }
            else
            {
                Console.WriteLine("Its Not Equal");
            }
            Console.ReadLine();
        }

    }
}
