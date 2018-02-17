using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace @delegate
{
    class Program
    {
        delegate void sum(int a, int b);
        static void add(int a, int b)
        {
            int c = a + b;
            Console.WriteLine(c);
            Console.ReadLine();
        }
        
        static void Main(string[] args)
        {
            sum s = add;
            s.Invoke(10, 20);
          
        }
    }
}
