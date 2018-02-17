using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace indexer
{
    class Program
    {
        string[] str = new string[3];
        public string this[int i]
        {
            get
            {
                return str[i];
            }
            set
            {
                str[i] = value;
            }

        }
     
        static void Main(string[] args)
        {
            Program obj = new Program();
            obj[0] = "a";
            obj[1] = "b";
            obj[2] = "c";

            Console.WriteLine("{0}{1}{2}", obj[1], obj[2], obj[3]);
            Console.ReadLine();
        }
          
    }
}
