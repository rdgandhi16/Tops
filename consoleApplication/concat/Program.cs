using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace concat
{
    class Program
    {
        static void Main(string[] args)
            {
                string str;
                string str1;

                Console.WriteLine("Enter your String");
                str = (string)Console.ReadLine();
                Console.WriteLine("Enter your another String");
                str1 = (string)Console.ReadLine();
                string concat = string.Concat(str, "", str1);
                Console.WriteLine(concat);
                Console.ReadLine();
            }
    }
}
