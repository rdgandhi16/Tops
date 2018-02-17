using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Statemgmt
{
    class Program
    {
        static void Main(string[] args)
        {
            string str;
            Console.WriteLine("Enter Your String");
            str = (string)Console.ReadLine();

            string newstr = string.Copy(str);
            Console.WriteLine(newstr);
            Console.ReadLine();

            
        }
    }
}
