using Modelos.Frota;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapConsoleApp2.EstudoPOO
{
    public class TesteVeiculos
    {
        public TesteVeiculos()
        { }

        public void Executar()
        {
            Carro teste = new Carro();
            teste.Codigo = 1;
            teste.TipoDeMotor = "Motor Bi Combustível";
            teste.Cor = "Vermelho";
            teste.Conversivel = false;

            teste.Imprimir();

            Carro outroTeste = new Carro(2, "Motor da Gasolina", "Azul", 1500, true);

            outroTeste.Imprimir();
        }
    }
}
