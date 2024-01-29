using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KonjickiKlubCS
{
    internal class Korisnik : Osoba
    {
        public int BrojMobitela { get; set; }

        public bool Iskustvo { get; set; }

        public string GodinaRođenja { get; set; }

    }
}
