using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Caminhao : Veiculo
    {
        private bool biTruck;

        private int qtdeEixos;

        public int QtdeEixos { get { return qtdeEixos; } set { qtdeEixos = value; } }
        public bool BiTruck { get { return biTruck; } set { biTruck = value; } }

        public Caminhao() : base()
        { }

        public Caminhao(int codigo, string tipoDeMotor, string cor, double peso, int qtdeEixos, bool biTruck)
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.biTruck = biTruck;
            this.qtdeEixos = qtdeEixos;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Quantidade Eixos: {0}", this.qtdeEixos);
            Console.WriteLine("BiTruck: {0}", this.biTruck);
        }
    }
}
