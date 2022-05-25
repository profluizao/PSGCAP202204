using Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FakeDB.IBGE
{
    public static class RegiaoFakeDB
    {
        private static List<Regiao> regioes = new List<Regiao>();

        public static List<Regiao> Regioes
        {
            get 
            {
                if (regioes.Count() == 0)
                {
                    AdicionarRegioes();
                }
                return regioes;
            }
        }

        private static void AdicionarRegioes()
        {
            regioes.Add(new Regiao(1 ,"Centro-Oeste"));
            regioes.Add(new Regiao(2, "Nordeste"));
            regioes.Add(new Regiao(3, "Norte"));
            regioes.Add(new Regiao(4, "Sudeste"));
            regioes.Add(new Regiao(5, "Sul"));
        }
    }
}
