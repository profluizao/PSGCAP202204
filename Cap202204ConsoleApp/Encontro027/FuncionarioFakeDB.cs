using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cap202204ConsoleApp.Encontro027
{
    public static class FuncionarioFakeDB
    {
        private static List<Funcionario> funcionarios = new List<Funcionario>();

        public static List<Funcionario> Funcionarios
        {
            get 
            {
                if (funcionarios.Count() == 0)
                {
                    AdicionarFuncionarios();
                }
                return funcionarios; 
            }
        }

        private static void AdicionarFuncionarios()
        { 
            funcionarios.Add(new Funcionario(1, "Pedro", 1000));
            funcionarios.Add(new Funcionario(2, "André", 1200));
            funcionarios.Add(new Funcionario(3, "Tiago", 1500));
            funcionarios.Add(new Funcionario(4, "João",  1000));
            funcionarios.Add(new Funcionario(5, "Tadeu", 1250));
            funcionarios.Add(new Funcionario(6, "Judas", 750));
            funcionarios.Add(new Funcionario(7, "Simão", 1000));
            funcionarios.Add(new Funcionario(8, "Tomé", 1500));
            funcionarios.Add(new Funcionario(9, "Mateus", 1300));
            funcionarios.Add(new Funcionario(10, "Paulo", 1750));
            funcionarios.Add(new Funcionario(11, "Marcos", 1000));
            funcionarios.Add(new Funcionario(12, "Lucas", 1000));
        }
    }
}
