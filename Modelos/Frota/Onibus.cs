using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Onibus : Veiculo
    {
        private bool botaoParada;

        public bool BotaoParada { get { return botaoParada; } set { botaoParada = value; } }

        public Onibus() : base()
        { }

        public Onibus(int codigo, string tipoDeMotor, string cor, double peso, bool botaoParada) 
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.botaoParada = botaoParada;

        }
        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Botão de parada: {0}", this.botaoParada);
        }
    }
}
