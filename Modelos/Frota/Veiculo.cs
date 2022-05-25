using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos.Frota
{
    public abstract class Veiculo
    {
        protected int codigo;

        protected string tipoDeMotor;

        protected string cor;
        protected double peso;

        public int Codigo 
        { 
            get { return codigo; } 
            set { codigo = value;} 
        }

        public string TipoDeMotor 
        { 
            get { return tipoDeMotor; } 
            set { tipoDeMotor = value; } 
        }

        public string Cor { get => cor; set => cor = value; }

        public double Peso { get => peso; set => peso = value; }

        public Veiculo()
        { }

        protected Veiculo(int codigo, string tipoDeMotor, string cor, double peso)
        {
            this.codigo = codigo;
            this.tipoDeMotor = tipoDeMotor;
            this.cor = cor;
            this.peso = peso;
        }

        public virtual void Imprimir()
        {
            Console.WriteLine("Codigo: {0}", this.codigo);
            Console.WriteLine("Tipo de Motor: {0}", this.tipoDeMotor);
            Console.WriteLine("Cor: {0}", this.cor);
            Console.WriteLine("Peso: {0}", this.peso);
        }
    }
}
