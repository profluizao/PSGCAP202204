using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Carro : Veiculo
    {
        private bool conversivel;

        public bool Conversivel { get => conversivel; set => conversivel = value; }

        public Carro() : base()
        { }

        public Carro(int codigo, string tipoDeMotor,string cor, double peso, bool conversivel) : 
            base(codigo, tipoDeMotor, cor, peso)
        {
            this.conversivel = conversivel;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Conversível: {0}", this.conversivel);
        }
    }
}
