using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inheritance
{
    class Program
    {
        static void Main(string[] args)
        {
            Roma obj= new Roma();
            obj.sum();
        }
    }
    class Rinkal
    {
        public int a=10;
        public int b=10;
    }
    class Roma : Rinkal
    {
        public void sum()
        {
            int c = a + b;
            Console.WriteLine(c);
            Console.ReadLine();
        }

    }
}
