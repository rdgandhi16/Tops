using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GlobalStatic
{
    class Program
    {
        static int a=10;
        static int b=45;

        static void Main(string[] args)
        {
           Program p = new Program();
           p.sum();   
        }
        void sum()
        {
            int c = a + b;
            Console.WriteLine(c);

            c = int.Parse(Console.ReadLine());
        }
        
     }
}
