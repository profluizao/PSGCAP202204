using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Foguete : Veiculo
    {
        private int qtdePropulsores;

        public int QtdePropulsores { get => qtdePropulsores; set => qtdePropulsores = value; }

        public Foguete(): base()
        { }

        public Foguete(int codigo, string tipoDeMotor, string cor, double peso, int qtdePropulsores)
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.qtdePropulsores = qtdePropulsores;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Quantidade de propulsores: {0}", this.qtdePropulsores);
        }
    }
}
