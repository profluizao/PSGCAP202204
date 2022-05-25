using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Navio : Veiculo
    {
        private int qtdeAncora;

        private int qtdeBarcosSalvaVidas;

        private bool velas;

        private bool sonar;

        public int QtdeAncora { get => qtdeAncora; set => qtdeAncora = value; }
        public int QtdeBarcosSalvaVidas { get => qtdeBarcosSalvaVidas; set => qtdeBarcosSalvaVidas = value; }
        public bool Velas { get => velas; set => velas = value; }
        public bool Sonar { get => sonar; set => sonar = value; }

        public Navio() : base()
        { }

        public Navio(int codigo, string tipoDeMotor, string cor, double peso, int qtdeAncora, 
            int qtdeBarcosSalvaVidas, bool velas, bool sonar)
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.qtdeAncora = qtdeAncora;
            this.qtdeBarcosSalvaVidas = qtdeBarcosSalvaVidas;
            this.velas = velas;
            this.sonar = sonar;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Quantidade de Âncoras: {0}", this.qtdeAncora);
            Console.WriteLine("Quantidade de barcos salva vidas: {0}", this.qtdeBarcosSalvaVidas);
            Console.WriteLine("Contém velas: {0}", this.velas);
            Console.WriteLine("Contém sonar: {0}", this.sonar);
        }
    }
}
