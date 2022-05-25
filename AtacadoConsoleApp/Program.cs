using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsoleApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Escolha uma opção:");
            Console.WriteLine("(C)ategoria");
            Console.WriteLine("(S)ubcategoria");
            Console.WriteLine("(P)roduto");
            string opcao = Console.ReadLine();
            if (opcao.ToUpper() == "C")
            {
                Console.WriteLine("Você selecionou a opção Categoria.");
            }
            else if (opcao.ToUpper() == "S")
            {
                Console.WriteLine("Você selecionou a opção Subcategoria.");
            }
            else if (opcao.ToUpper() == "P")
            {
                Console.WriteLine("Você selecionou a opção Produto.");
            }
            else
            {
                Console.WriteLine("Opção inválida.");
            }
            Console.ReadLine();
        }
    }
}
