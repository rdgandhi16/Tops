using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace compare
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

            int i = str.CompareTo(str1);
            if (i==0)
            {
                Console.WriteLine("String is Match");
            }
            else
            {
                Console.WriteLine("String not Match");
            }

            Console.ReadLine();
        }   
    }
}
