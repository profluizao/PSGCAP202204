using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Aviao : Veiculo
    {
        private int qtdeMotores;

        private bool tremDePouso;

        private int qtdeAsas;

        public int QtdeMotores { get => qtdeMotores; set => qtdeMotores = value; }
        public bool TremDePouso { get => tremDePouso; set => tremDePouso = value; }
        public int QtdeAsas { get => qtdeAsas; set => qtdeAsas = value; }

        public Aviao() : base()
        { }

        public Aviao(int codigo, string tipoDeMotor, string cor, double peso, int qtdeMotores, bool tremDePouso,int qtdeAsas)
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.qtdeMotores = qtdeMotores;
            this.tremDePouso = tremDePouso;
            this.qtdeAsas = qtdeAsas;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("Quantidade de motores: {0}", this.qtdeMotores);
            Console.WriteLine("Trem de pouso: {0}", this.tremDePouso);
            Console.WriteLine("Asas: {0}", this.qtdeAsas);
        }
    }
}
