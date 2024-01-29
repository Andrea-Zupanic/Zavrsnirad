using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KonjickiKlubCS
{
    internal class Usluga : Entitet
    {

        public string Naziv { get; set; }

        public int BrojSati { get; set; }

        public int Cijena { get; set; }

        public bool PotrebnoIskustvo { get; set; }


    }
}
