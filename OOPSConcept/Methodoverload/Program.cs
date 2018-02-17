using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Methodoverload
{
    class Program
    {
        static void Main(string[] args)
        {
            Program obj = new Program();
            int a, b;
            Console.WriteLine("Enter a");
            a = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter b");
            b = int.Parse(Console.ReadLine());
            obj.sum(a);
            obj.sum(a ,b);
        }
        public void sum(int a)
        {
            int b = a + a;
            Console.WriteLine(b);
            Console.ReadLine();
        }
        public void sum(int a, int b)
        {
            int c = a + b;
            Console.WriteLine(c);
            Console.ReadLine();

        }
    }
}
