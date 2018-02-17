using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Staticdeclate
{
    class Program
    {
        static void Main(string[] args)
        {
            Program obj = new Program();
            obj.sum();
        }

        public void sum()
        {
            int a;
            int b;
            Console.WriteLine("A");
            a = int.Parse(Console.ReadLine());
            Console.WriteLine("B");
            b = int.Parse(Console.ReadLine());

            int c = a + b;
            Console.WriteLine(c);
            Console.ReadLine();

        }
    }
}
