using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cap202204ConsoleApp.Models
{
    public class Regiao
    {
        private int codigo;

        private string descricao;

        public int Codigo { get => codigo; set => codigo = value; }

        public string Descricao { get => descricao; set => descricao = value; }

        public Regiao(int codigo, string descricao)
        {
            this.codigo = codigo;
            this.descricao = descricao;
        }
    }
}
