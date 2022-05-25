using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public abstract class Pessoa
    {
        protected int codigo;

        protected string telefone;

        protected string email;

        protected string endereco;

        protected Pessoa(int codigo, string telefone, string email, string endereco)
        {
            this.codigo = codigo;
            this.telefone = telefone;
            this.email = email;
            this.endereco = endereco;
        }

        public int Codigo { get => codigo; set => codigo = value; }
        public string Telefone { get => telefone; set => telefone = value; }
        public string Email { get => email; set => email = value; }
        public string Endereco { get => endereco; set => endereco = value; }

    }
}
