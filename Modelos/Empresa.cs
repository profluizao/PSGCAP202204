using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public class Empresa : Pessoa
    {
        protected string razaoSocial;

        protected string nomeFantasia;

        protected string cnpj;

        protected string inscricaoEstadual;

        public Empresa(int codigo, string telefone, string email, string endereco, string razaoSocial, string nomeFantasia, string cnpj, string inscricaoEstadual)
            : base(codigo, telefone, email, endereco)
        {
            this.razaoSocial = razaoSocial;
            this.nomeFantasia = nomeFantasia;
            this.cnpj = cnpj;
            this.inscricaoEstadual = inscricaoEstadual;
        }

        public string RazaoSocial { get => razaoSocial; set => razaoSocial = value; }
        public string NomeFantasia { get => nomeFantasia; set => nomeFantasia = value; }
        public string Cnpj { get => cnpj; set => cnpj = value; }
        public string InscricaoEstadual { get => inscricaoEstadual; set => inscricaoEstadual = value; }


    }
}
