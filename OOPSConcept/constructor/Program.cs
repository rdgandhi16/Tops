using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace constructor
{
    class Program
    {
        static void Main(string[] args)
        {
            Program obj = new Program();

        }
        ~Program()
        {
            Console.WriteLine("Hello World");
            Console.ReadLine();
        }

    }
}
