using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace generic
{
    class Program
    {
        class test<t>
        { 
            t ob1;
            public test(t t1)
            {
                ob1=t1;
            }
            public void display()
            {
                Console.WriteLine(ob1);
                Console.ReadLine();
            }

        static void Main(string[] args)
        {

            test<int>i=new test<int> (10);
            t.display();

            test<string> t1=new test<string> ("Rinkal");
            t1.display();
        }
    }
}
