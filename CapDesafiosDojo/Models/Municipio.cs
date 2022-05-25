using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapDesafiosDojo.Models
{
    public class Municipio
    {
        private int codigo;
        private string nome;
        private string siglauf;
        private int ibge;
        private int ibge7;
        private int populacao;
        private int cep;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nome { get => nome; set => nome = value; }
        public string Siglauf { get => siglauf; set => siglauf = value; }
        public int Ibge { get => ibge; set => ibge = value; }
        public int Ibge7 { get => ibge7; set => ibge7 = value; }
        public int Populacao { get => populacao; set => populacao = value; }
        public int Cep { get => cep; set => cep = value; }

        public Municipio()
        { }

        public Municipio(int codigo, string nome, string siglauf, int ibge, int ibge7, int populacao, int cep)
        {
            this.codigo = codigo;
            this.nome = nome;
            this.siglauf = siglauf;
            this.ibge = ibge;
            this.ibge7 = ibge7;
            this.populacao = populacao;
            this.cep = cep;
        }


    }
}