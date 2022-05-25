using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapDesafiosDojo.Models
{
    public class Estado
    {
        private int codigo;
        private string nome;
        private string siglauf;
        private string regiao;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nome { get => nome; set => nome = value; }
        public string Siglauf { get => siglauf; set => siglauf = value; }
        public string Regiao { get => regiao; set => regiao = value; }

        public Estado()
        { }

        public Estado(int codigo, string nome, string siglauf, string regiao)
        {
            this.codigo = codigo;
            this.nome = nome;
            this.siglauf = siglauf;
            this.regiao = regiao;
        }
    }
}
