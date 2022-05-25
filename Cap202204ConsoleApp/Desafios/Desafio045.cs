using Cap202204ConsoleApp.FakeDB;
using Cap202204ConsoleApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cap202204ConsoleApp.Desafios
{
    /// <summary>
    /// Desafio 45 - Utilizando o FakeDB de Pessoa, desenvolva uma classe que:
    /// 1 - crie um método que produza uma lista paralela com todos nascidos na década de 1960.
    /// 2 - crie um método que produza uma lista paralela com todos nascidos entre 1975 e 1980.
    /// 3 - crie um método que produza uma lista paralela com todos nascidos em determinado mês.
    /// 4 - crie um método que produza uma lista paralela com todos cujo nome comece com a letra A.
    /// 5 - crie um método que pesquise pessoas pelo nome e exiba o resultado.
    /// 6 - crie um método que pesquise pessoas pelo ano de nascimento.
    /// 7 - crie um método que utilize a lista 1, e exiba somente os homens.
    /// 8 - crie um método que utilize a lista 2, e exiba somente as mulheres.
    /// </summary>
    public class Desafio045
    {
        private List<Pessoa> lista01;
        private List<Pessoa> lista02;
        private List<Pessoa> lista03;
        private List<Pessoa> lista04;
        private List<Pessoa> lista05;
        private List<Pessoa> lista06;
        private List<Pessoa> lista07;
        private List<Pessoa> lista08;

        public Desafio045()
        { 
            this.lista01 = new List<Pessoa>();
            this.lista02 = new List<Pessoa>();
            this.lista03 = new List<Pessoa>();
            this.lista04 = new List<Pessoa>();
            this.lista05 = new List<Pessoa>();
            this.lista06 = new List<Pessoa>();
            this.lista07 = new List<Pessoa>();
            this.lista08 = new List<Pessoa>();
        }

        public void Executar()
        {
            this.Exercicio01();
            this.Exercicio02();
            this.Exercicio03();
            this.Exercicio04();
            this.Exercicio05();
            this.Exercicio06();
            this.Exercicio07();
            this.Exercicio08();
        }

        /// <summary>
        /// 1 - crie um método que produza uma lista paralela com todos nascidos na década de 1960.
        /// </summary>
        public void Exercicio01()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 1 --");
            DateTime dtInicio = Convert.ToDateTime("01-01-1960");
            DateTime dtFim = Convert.ToDateTime("31-12-1969");
            this.lista01 = PessoaFakeDB.Pessoas
                .Where(p => p.DtNascimento >= dtInicio)
                .Where(p => p.DtNascimento <= dtFim)
                .ToList();
            if (this.lista01.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista01)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista01.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 1 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 2 - crie um método que produza uma lista paralela com todos nascidos entre 1955 e 1960.
        /// </summary>
        public void Exercicio02()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 2 --");
            DateTime dtInicio = Convert.ToDateTime("01-01-1955");
            DateTime dtFim = Convert.ToDateTime("31-12-1960");
            this.lista02 = PessoaFakeDB.Pessoas
                .Where(p => p.DtNascimento >= dtInicio)
                .Where(p => p.DtNascimento <= dtFim)
                .ToList();
            if (this.lista02.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista02)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista02.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 2 --");
            Console.ReadLine();

        }

        /// <summary>
        /// 3 - crie um método que produza uma lista paralela com todos nascidos em determinado mês.
        /// </summary>
        public void Exercicio03()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 3 --");
            int mes = 0;
            while (true)
            {
                Console.Write("Informe o mês desejado (1 a 12): ");
                string resposta = Console.ReadLine();
                if (int.TryParse(resposta, out mes) == false)
                {
                    Console.WriteLine("Mês incorreto, tente novamente.");
                }
                else
                {
                    break;
                }
            }
            this.lista03 = PessoaFakeDB.Pessoas
                .Where(p => p.DtNascimento.Month == mes)
                .ToList();
            if (this.lista03.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista03)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista03.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 3 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 4 - crie um método que produza uma lista paralela com todos cujo nome comece com a letra A.
        /// </summary>
        public void Exercicio04()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 4 --");
            this.lista04 = PessoaFakeDB.Pessoas.Where(pes => pes.Nome.StartsWith("A")).ToList();
            if (this.lista04.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista04)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista04.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 4 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 5 - crie um método que pesquise pessoas pelo nome e exiba o resultado.
        /// </summary>
        public void Exercicio05()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 5 --");
            Console.Write("Informe um nome para pesquisa:");
            string nome = Console.ReadLine();
            this.lista05 = PessoaFakeDB.Pessoas.Where(pes => pes.Nome.StartsWith(nome)).ToList();
            if (this.lista05.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista05)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista05.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 5 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 6 - crie um método que pesquise pessoas pelo ano de nascimento.
        /// </summary>
        public void Exercicio06()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 6 --");
            int ano = 0;
            while (true)
            {
                Console.Write("Informe o ano desejado com 4 dígitos (ex. 1920): ");
                string resposta = Console.ReadLine();
                if (int.TryParse(resposta, out ano) == false)
                {
                    Console.WriteLine("Ano incorreto, tente novamente.");
                }
                else
                {
                    if (resposta.Length < 4)
                    {
                        Console.WriteLine("Mês incorreto, tente novamente.");
                    }
                    else
                    {
                        break;
                    }
                }
            }
            this.lista06 = PessoaFakeDB.Pessoas.Where(pes => pes.DtNascimento.Year == ano).ToList();
            if (this.lista06.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista06)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista06.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 6 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 7 - crie um método que utilize a lista 1, e exiba somente os homens.
        /// </summary>
        public void Exercicio07()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 7 --");
            this.lista07 = this.lista01.Where(pes => pes.Sexo == "M").ToList();
            if (this.lista07.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista07)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3} | Sexo: {4}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento,
                        item.Sexo);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista07.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 7 --");
            Console.ReadLine();
        }

        /// <summary>
        /// 8 - crie um método que utilize a lista 2, e exiba somente as mulheres.
        /// </summary>
        public void Exercicio08()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 8 --");
            this.lista08 = this.lista02.Where(pes => pes.Sexo == "F").ToList();
            if (this.lista08.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Pessoa item in this.lista08)
                {
                    Console.WriteLine("Codigo: {0} | Nome Completo: {1} {2} | Data Nascimento: {3} | Sexo: {4}",
                        item.Codigo,
                        item.Nome,
                        item.SobreNome,
                        item.DtNascimento,
                        item.Sexo);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.lista08.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 8 --");
            Console.ReadLine();
        }
    }
}


