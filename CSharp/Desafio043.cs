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
    /// Desafio 43 - Utilizando o FakeDB de Pessoa, desenvolva um método que liste todas as pessoas com 
    /// idade entre 45 e 55 anos, solicite o código de uma pessoa, preencha sua altura e peso, salvando 
    /// essa pessoa em uma outra lista. Logo após, verifique qual pessoa é a mais alta, e a mais pesada.
    /// </summary>
    public class Desafio043
    {
        private List<Pessoa> listaDePessoas;
        private List<Pessoa> listaDePessoasSelecionadas;
        private List<Pessoa> listaDePessoasParaPesoAltura;

        public Desafio043()
        {
            this.listaDePessoas = PessoaFakeDB.Pessoas;
            this.listaDePessoasSelecionadas = new List<Pessoa>();
            this.listaDePessoasParaPesoAltura = new List<Pessoa>();
        }

        public void Executar()
        {
            foreach (Pessoa item in this.listaDePessoas)
            {
                int idade = this.CalcularIdade(item.DtNascimento);
                item.Idade = idade;
                if ((idade < 55) && (idade > 45))
                {
                    this.listaDePessoasSelecionadas.Add(item);
                }
            }

            while (true)
            {
                Console.Clear();
                foreach (Pessoa item in this.listaDePessoasSelecionadas)
                {
                    Console.WriteLine("Código: {0} | Nome Completo: {1} {2} | Idade: {3}",
                        item.Codigo, item.Nome, item.SobreNome, item.Idade);
                }
                Console.Write("Selecione um código listado: ");
                int opcao = 0;
                string s = Console.ReadLine();
                if (int.TryParse(s, out opcao))
                {
                    Pessoa achado = this.listaDePessoasSelecionadas.SingleOrDefault(pes => pes.Codigo == opcao);
                    if (achado != null)
                    {
                        Console.Write("Informe o Peso: ");
                        achado.Peso = Convert.ToDouble(Console.ReadLine());

                        Console.Write("Informe a Altura: ");
                        achado.Altura = Convert.ToDouble(Console.ReadLine());

                        this.listaDePessoasParaPesoAltura.Add(achado);
                    }
                }
                Console.Write("Deseja parar (S/N):");
                string saida = Console.ReadLine();
                if (saida.ToUpper() == "S")
                {
                    break;
                }
            }
            
            double alturaMax = this.listaDePessoasParaPesoAltura.Max(pes => pes.Altura);
            Console.Write("A maior altura é: {0}", alturaMax);

            double pesoMax = this.listaDePessoasParaPesoAltura.Max(pes => pes.Peso);
            Console.Write("O maior Peso é: {0}", pesoMax);
        }

        private int CalcularIdade(DateTime dtNascimento)
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
