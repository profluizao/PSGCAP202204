using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cap202204ConsoleApp.Models
{
    public class Estado
    {
        private int codigo;

        private string descricao;

        private string siglaUF;

        private string regiaoBrasil;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Descricao { get => descricao; set => descricao = value; }
        public string SiglaUF { get => siglaUF; set => siglaUF = value; }
        public string RegiaoBrasil { get => regiaoBrasil; set => regiaoBrasil = value; }

        public Estado(int codigo, string descricao, string siglaUF, string regiaoBrasil)
        {
            this.codigo = codigo;
            this.descricao = descricao;
            this.siglaUF = siglaUF;
            this.regiaoBrasil = regiaoBrasil;
        }
    }
}
