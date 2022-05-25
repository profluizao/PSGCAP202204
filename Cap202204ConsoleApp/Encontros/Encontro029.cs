using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cap202204ConsoleApp.Encontros
{
    public class Encontro029
    {
        public Encontro029()
        { }

        public void Executar()
        {
            this.ValidarEntrada();
        }

        private void ValidarEntrada()
        {
            while (true)
            {
                Console.Write("Informe um número inteiro: ");
                int num = 0;
                if (int.TryParse(Console.ReadLine(), out num) == false)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("Entrada inválida, tente novamente");
                }
                else
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("Entrada válida.");
                    break;
                }
                Console.ResetColor();
            }
        }
    }
}
