using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OverRiding
{
    class Program
    {
        static void Main(string[] args)
        {
            shape sh=new shape();
            sh.sum();
            square sh =new square();
            sh.sum();
        }
    class shape
    {
        public void sum()
        {
            public int a;
            public int b;
            int c = a + b;
            Console.WriteLine(c);
            Console.ReadLine();
        }
    }
    class square:shape
    {
        public void sum()
        {
            int c=10+20;
            Console.WriteLine(c);
            Console.ReadLine();
        }
    }
}
