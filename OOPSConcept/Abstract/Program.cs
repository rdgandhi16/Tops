using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstract
{
    //class Program
    //{
    //    static void Main(string[] args)
    //    {
    //        other ot = new other();
    //        ot.sum();
    //    }
    //}
    //abstract class test
    //{
    //    abstract public void sum();
    //    public int a = 10;
    //    public int b = 20;
    //}
    //class other : test
    //{
    //    public override void sum()
    //    {
    //        //throw new NotImplementedException();
    //        int c = a + b;
    //        Console.WriteLine(c);
    //        Console.ReadLine();
    //    }
    //}
    class program
    {
        static void Main(string[] args)
        {
            other ot = new other();
            ot.sum();
        }
        abstract class test
        {
            abstract public void sum();
            public int a = 10;
            public int b = 10;
          
        }
        class other : test
        {
            public override void sum()
            {
                //throw new NotImplementedException();
                int c = a + b;
                Console.WriteLine(c);
                Console.ReadLine();
            }
        }
    }

}
