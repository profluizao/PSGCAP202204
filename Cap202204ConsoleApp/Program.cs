using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cap202204ConsoleApp.Desafios;
using Cap202204ConsoleApp.Encontros;
using Cap202204ConsoleApp.Models;

namespace Cap202204ConsoleApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            //Desafio043 desafio = new Desafio043();
            //desafio.Executar();

            //Encontro029 encontro = new Encontro029();
            //encontro.Executar();

            //Desafio044 desafio = new Desafio044();
            //desafio.Executar();

            //Desafio045 desafio = new Desafio045();
            //desafio.Executar();

            DesafioDojo desafio = new DesafioDojo();
            desafio.Executar();

            Console.ReadLine();
        }

        public static void Encontro_027()
        { 
            Aluno aluno = new Aluno();
            aluno.Codigo = 1;
            aluno.Nome = "Luiz";
            aluno.Idade = 48;
            aluno.Altura = 1.70;

            Aluno aluno2 = new Aluno();
            aluno2.Codigo = 2;
            aluno2.Nome = "Kali";
            aluno2.Idade = 17;
            aluno2.Altura = 1.68;

            Aluno aluno3 = new Aluno();
            aluno3.Codigo = 3;
            aluno3.Nome = "Nélio";
            aluno3.Idade = 26;
            aluno3.Altura = 1.69;

            Console.WriteLine("Codigo - Nome - Idade - Altura");
            //Console.WriteLine("{0} - {1} - {2} - {3}", aluno.Codigo, aluno.Nome, aluno.Idade, aluno.Altura);
            //Console.WriteLine("{0} - {1} - {2} - {3}", aluno2.Codigo, aluno2.Nome, aluno2.Idade, aluno2.Altura);
            //Console.WriteLine("{0} - {1} - {2} - {3}", aluno3.Codigo, aluno3.Nome, aluno3.Idade, aluno3.Altura);
            aluno.Imprimir();
            aluno2.Imprimir();
            aluno3.Imprimir();
        }

        public static void Encontro_027_Codigo_02()
        { 
            Aluno aluno1 = new Aluno(1, "Luiz", 48, 1.70);
            Aluno aluno2 = new Aluno(2, "Kali", 17, 1.68);
            Aluno aluno3 = new Aluno(3, "Nélio", 26, 1.69);

            aluno1.Imprimir();
            aluno2.Imprimir();
            aluno3.Imprimir();
        }

        public static void Encontro_027_Codigo_03()
        { 
            List<Aluno> lista = new List<Aluno>();

            Aluno mateus = new Aluno(1, "Mateus", 18, 1.70);
            lista.Add(mateus);

            lista.Add(new Aluno(2, "Lucas", 17, 1.84));
            lista.Add(new Aluno(3, "Andressa", 25, 1.63));
            lista.Add(new Aluno(4, "Luiz", 48, 1.70));
            lista.Add(new Aluno(5, "Kali", 17, 1.68));
            lista.Add(new Aluno(6, "Nélio", 26, 1.69));

            foreach (Aluno item in lista)
            {
                item.Imprimir();
            }
        }

        /// <summary>
        /// Desafio 41 - Crie uma classe para funcionários, com código, nome, e salário. 
        /// Em seguida, crie uma lista de funcionários previamente carregada. 
        /// Desenvolva um método que calcule e exiba o salário reajustado, de cada funcionário, 
        /// de acordo com a seguinte regra: Salário até R$ 1000,00, reajuste de 50%; 
        /// Salários maiores que R$ 1000,00, reajuste de 30%.
        /// </summary>
        public static void Desafio_041()
        {
            List<Encontro027.Funcionario> funcionarios = Encontro027.FuncionarioFakeDB.Funcionarios;
            foreach (Encontro027.Funcionario item in funcionarios)
            {
                double salarioReajustado = CalcularReajuste(item.Salario);
                Console.WriteLine("Nome: {0} - Salário Atual: {1} - Salário Reajustado: {2}",
                    item.Nome, item.Salario, salarioReajustado);
            }
        }

        public static double CalcularReajuste(double salarioAtual)
        {
            double salarioReajustado = 0;
            if (salarioAtual > 1000)
            {
                salarioReajustado = salarioAtual * 1.5;
            }
            else
            {
                salarioReajustado = salarioAtual * 1.3;
            }
            return salarioReajustado;
        }


        public static void Encontro_028()
        {
            List<Pessoa> pessoas = FakeDB.PessoaFakeDB.Pessoas;
        }

        /// <summary>
        /// Desafio 42 - Utilizando o FakeDB de Pessoa, desenvolva um método que verifique a idade de cada Pessoa na lista, 
        /// e se for menor que 65 anos exiba na cor vermelha “Sem permissão”, caso seja maior ou igual a 65 anos exiba na 
        /// cor verde “Permissão concedida”. Para tanto, pesquise como funciona a propriedade Console.ForegroundColor.
        /// </summary>
        public static void Desafio_042()
        {
            List<Pessoa> pessoas = FakeDB.PessoaFakeDB.Pessoas;
            foreach (Pessoa item in pessoas)
            {
                Console.ForegroundColor = ConsoleColor.White;
                int idade = CalcularIdade(item.DtNascimento);
                Console.Write("Nome completo: {0} {1} | Idade: {3} | Status: ", item.Nome, item.SobreNome, idade);
                if (idade < 65)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("SEM PERMISSÃO");
                }
                else
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("PERMISSÃO CONCEDIDA");
                }
                Console.ResetColor();
            }

        }

        private static int CalcularIdade(DateTime dtNascimento)
        { 
            int idade = 0;
            idade = DateTime.Today.Year - dtNascimento.Year;
            if (DateTime.Today.DayOfYear < dtNascimento.DayOfYear)
            {
                idade--;
            }
            return idade;
        }
    }
}
