using CapConsoleApp2.EstudoPOO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapConsoleApp2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //TesteVeiculos teste = new TesteVeiculos();
            //teste.Executar();

            Desafios.DesafioEncontro33.DesafioDojo desafio = new Desafios.DesafioEncontro33.DesafioDojo();
            desafio.Executar();

            Console.ReadLine();
        }
    }
}
