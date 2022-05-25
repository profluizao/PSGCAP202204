using CapDesafiosDojo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapDesafiosDojo.FakeDB
{
    public static class RegiaoFakeDB
    {
        private static List<Regiao> regiao = new List<Regiao>();

        public static List<Regiao> Regiao
        {
            get
            {
                if (regiao.Count() == 0)
                {
                    AdicionarRegiao();
                }
                return regiao;
            }
        }

        public static void AdicionarRegiao()
        {
            regiao.Add(new Regiao(1, "Norte", "N"));
            regiao.Add(new Regiao(2, "Nordeste", "NE"));
            regiao.Add(new Regiao(3, "Centro-Oeste", "CO"));
            regiao.Add(new Regiao(4, "Sudeste", "SE"));
            regiao.Add(new Regiao(5, "Sul", "S"));

        }

    }
}
