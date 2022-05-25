using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public class Estado : CampoPadronizado02
    {
        private string siglaUF;

        private string regiaoBrasil;

        public string SiglaUF { get => siglaUF; set => siglaUF = value; }

        public string RegiaoBrasil { get => regiaoBrasil; set => regiaoBrasil = value; }

        public Estado(int codigo, string descricao, string siglaUF, string regiaoBrasil) 
            : base (codigo, descricao)
        {
            this.siglaUF = siglaUF;
            this.regiaoBrasil = regiaoBrasil;
        }
    }
}
