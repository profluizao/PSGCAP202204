using System;

namespace Cap202204ConsoleApp.Encontro027
{
    /// <summary>
    /// Desafio 41 - Crie uma classe para funcionários, com código, nome, e salário. 
    /// Em seguida, crie uma lista de funcionários previamente carregada. 
    /// Desenvolva um método que calcule e exiba o salário reajustado, de cada funcionário, 
    /// de acordo com a seguinte regra: Salário até R$ 300,00, reajuste de 50%; 
    /// Salários maiores que R$ 300,00, reajuste de 30%.
    /// </summary>
    public class Funcionario
    {
        private int codigo;
        private string nome;
        private double salario;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nome { get => nome; set => nome = value; }
        public double Salario { get => salario; set => salario = value; }

        public Funcionario()
        { }

        public Funcionario(int codigo, string nome, double salario)
        {
            this.codigo = codigo;
            this.nome = nome;
            this.salario = salario;
        }


    }
}
