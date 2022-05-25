using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Trem : Veiculo
    {
        private int qtdeVagoes;
        private bool locomotiva;

        public int QtdeVagoes { get => qtdeVagoes; set => qtdeVagoes = value; }

        public bool Locomotiva { get => locomotiva; set => locomotiva = value; }

        public Trem() : base()
        { }

        public Trem(int codigo, string tipoDeMotor, string cor, double peso, int vagoes, bool locomotiva) 
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.qtdeVagoes = vagoes;
            this.locomotiva = locomotiva;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Número de vagões: {0}", this.qtdeVagoes);
            Console.WriteLine("Possui locomotiva: {0}", this.locomotiva);
        }
    }
}
