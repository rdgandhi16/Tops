using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace @interface
{
    class Program
    {
        public interface one
        {
            void one();
        }
        public interface two
        {
            void two();
        }
        public interface three
        {
            void three();
        }
        public interface four
        {
            void four();
        }

        class oddeven : one, two, three, four
        {
            public void one()
            {
                Console.Write("one");
                Console.ReadLine();
            }
            public void two()
            {
                Console.WriteLine("two");
                Console.ReadLine();
            }
            public void three()
            {
                Console.WriteLine("three");
                Console.ReadLine();
            }
            public void four()
            {
                Console.WriteLine("four");
                Console.ReadLine();
            }
        }
        static void Main(string[] args)
        {
            one o = new oddeven();
            o.one();

            two tw = new oddeven();
            tw.two();

            three th = new oddeven();
            th.three();

            four f = new oddeven();
            f.four();
        }
    }
}