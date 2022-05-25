using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public class Moto : Veiculo
    {
        private string guidao;
        private bool bau;

        public string Guidao { get => guidao; set => guidao = value; }
        public bool Bau { get => bau; set => bau = value; }

        public Moto() : base()
        { }

        public Moto(int codigo, string tipoDeMotor, string cor, double peso, string guidao, bool bau)
            : base(codigo, tipoDeMotor, cor, peso)
        {
            this.guidao = guidao;
            this.bau = bau;
        }

        public override void Imprimir()
        {
            base.Imprimir();
            Console.WriteLine("tipo de guidão: {0}", this.guidao);
            Console.WriteLine("Contém baú: {0}", this.bau);
        }
    }
}
