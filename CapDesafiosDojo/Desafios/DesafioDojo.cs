using CapDesafiosDojo.FakeDB;
using CapDesafiosDojo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapDesafiosDojo.Desafios
{
    public class DesafioDojo
    {
        private List<Estado> listaEstadosRegiaoSelecionada;
        private List<Municipio> listaConsultarMunicipioPeloNome;
        private List<Estado> estados;
        private List<Estado> sigla;
        private List<Municipio> listaMunicipioPorEstado;
        private List<Municipio> pesquisarMunicipioPorIBGE7;
        private List<Municipio> pesquisarMunicipioPorCep;

        public DesafioDojo()
        {
            this.listaEstadosRegiaoSelecionada = new List<Estado>();
            this.listaConsultarMunicipioPeloNome = new List<Municipio>();
            this.estados = new List<Estado>();
            this.sigla = new List<Estado>();
            this.listaMunicipioPorEstado = new List<Municipio>();
            this.pesquisarMunicipioPorIBGE7 = new List<Municipio>();
            this.pesquisarMunicipioPorCep = new List<Municipio>();
        }

        public void Executar()
        {
            this.PesquisarPorNome();
            this.PesquisarPorSigla();
            this.ListaEstadosRegiao();
            this.ConsultarMunicipioPeloNome();
            this.ListaMunicipiosPorEstado();
            this.PesquisarMunicipioPorIBGE7();
            this.PesquiseMunicipioPorCep();
        }

        /// <summary>
        /// KALI
        /// </summary>
        private void PesquisarPorNome()
        {
            Console.Write("Digite o nome de um Estado: ");
            string nome = Console.ReadLine();
            this.estados = EstadoFakeDB.Estados.Where(pes => pes.Nome.StartsWith(nome)).ToList();
            Console.WriteLine("número de estados encontrados: {0}.", this.estados.Count());
            foreach (Estado item in this.estados)
            {
                Console.WriteLine("- Estado encontrado -");
                Console.WriteLine("{0} | {1}", item.Nome, item.Siglauf);
            }
            Console.WriteLine();
        }

        private void PesquisarPorSigla()
        {

            while (true)
            {
                Console.Write("Digite uma Sigla de Estado: ");
                string nome = Console.ReadLine();
                if (nome.Length != 2)
                {
                    Console.WriteLine("Sigla não encontrada, digite novamente!");
                }
                this.sigla = EstadoFakeDB.Estados.Where(pes => pes.Siglauf == nome).ToList();
                Console.WriteLine("número de Siglas encontradas: {0}.", this.sigla.Count());
                foreach (Estado item in this.sigla)
                {
                    Console.WriteLine("- Sigla encontrada -");
                    Console.WriteLine("{0} | {1}", item.Siglauf, item.Nome);
                }
                Console.Write("Deseja parar (S/N):");
                string saida = Console.ReadLine();
                if (saida.ToUpper() == "S")
                {
                    break;
                }
            }
            Console.WriteLine();
        }

        /// <summary>
        /// NELIO
        /// </summary>
        private void ListaEstadosRegiao()
        {
            while (true)
            {
                Console.WriteLine("-Lista para mostrar todos os estados da região desejada-");
                Console.WriteLine("Escolha a região desejada: ");
                string regiao = Console.ReadLine();
                this.listaEstadosRegiaoSelecionada = EstadoFakeDB.Estados
                    .Where(pes => pes.Regiao.ToUpper() == regiao || pes.Regiao.ToLower() == regiao || pes.Regiao == regiao)
                    .ToList();
                Console.WriteLine("Estados da regiao {0}:", regiao);
                foreach (Estado item in this.listaEstadosRegiaoSelecionada)
                {
                    Console.WriteLine("{0} - Sigla: {1}", item.Nome, item.Siglauf);
                }
                if (this.listaEstadosRegiaoSelecionada.Count() == 0)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("Essa região não existe.");
                    Console.ResetColor();
                }
                else
                {
                    break;
                }
            }
            Console.WriteLine();
        }

        /// <summary>
        /// LUCAS
        /// </summary>
        private void ConsultarMunicipioPeloNome()
        {

            while (true)
            {
                Console.Write("Qual o município que você procura? >");
                string nomem = Convert.ToString(Console.ReadLine());

                this.listaConsultarMunicipioPeloNome = MunicipioFakeDB.Municipios.Where(pes => pes.Nome == nomem).ToList();
                foreach (var pe in this.listaConsultarMunicipioPeloNome)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine("Codigo: {0} | Nome: {1} | SiglaUF: {2} | Ibge: {3} | Ibge7: {4} | Pop: {5} | Cep: {6}",
                        pe.Codigo, pe.Nome, pe.Siglauf, pe.Ibge, pe.Ibge7, pe.Populacao, pe.Cep);
                    Console.ResetColor();

                }
                if (this.listaConsultarMunicipioPeloNome.Count() == 0)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("Não existe ninguem com esse nome");
                    Console.ResetColor();
                }

                Console.Write("Deseja parar (S/N):");
                string saida = Console.ReadLine();
                if (saida.ToUpper() == "S")
                {
                    break;
                }
            }
            Console.WriteLine();
        }

        /// <summary>
        /// MATHEUS
        /// </summary>
        public void ListaMunicipiosPorEstado()
        {
            Console.WriteLine("-- EXERCÍCIO  8");
            Console.WriteLine("Digite a sigla do estado (RO): ");
            string opcao = Console.ReadLine();
            this.listaMunicipioPorEstado = MunicipioFakeDB.Municipios.Where(pes => pes.Siglauf == opcao).ToList();
            if (this.listaMunicipioPorEstado.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Municipio item in this.listaMunicipioPorEstado)
                {
                    Console.WriteLine("  Municipio: {0} | SiglaUF {1} ",
                        item.Nome,
                        item.Siglauf);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.listaMunicipioPorEstado.Count());
            Console.ReadLine();
            Console.WriteLine();
        }

        /// <summary>
        /// ANDRESSA
        /// </summary>
        public void PesquisarMunicipioPorIBGE7()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 09 --");
            Console.WriteLine("Digite o Código do IBGE: ");
            int resposta = Convert.ToInt32(Console.ReadLine());
            this.pesquisarMunicipioPorIBGE7 = MunicipioFakeDB.Municipios.Where(pes => pes.Ibge7 == resposta).ToList();
            if (this.pesquisarMunicipioPorIBGE7.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Municipio item in this.pesquisarMunicipioPorIBGE7)
                {
                    Console.WriteLine("IBGE: {0} |Código: {1} | Município: {2} | Sigla: {3} | " +
                        "População: {4} | CEP: {5} ", item.Ibge7, item.Codigo, item.Nome,
                        item.Siglauf, item.Populacao, item.Cep);
                }
            }
            Console.WriteLine("Total de Registros: {0}", this.pesquisarMunicipioPorIBGE7.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 09 --");
            Console.ReadLine();//PROFESSOR
            
        }

        public void PesquiseMunicipioPorCep()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 10 --");
            Console.WriteLine("Digite o CEP: ");
            int resposta = Convert.ToInt32(Console.ReadLine());
            this.pesquisarMunicipioPorCep = MunicipioFakeDB.Municipios.Where(pes => pes.Cep == resposta).ToList();
            if (this.pesquisarMunicipioPorCep.Count() == 0)
            {
                Console.WriteLine("Não existem dados a serem exibidos.");
            }
            else
            {
                foreach (Municipio item in this.pesquisarMunicipioPorCep)
                {
                    Console.WriteLine("CEP: {0} |Código: {1} | Município: {2} | Sigla: {3} | " +
                        "População: {4} | IBGE: {5} ", item.Cep, item.Codigo, item.Nome,
                        item.Siglauf, item.Populacao, item.Ibge7);
                }

            }
            Console.WriteLine("Total de Registros: {0}", this.pesquisarMunicipioPorCep.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 10 --");
            Console.ReadLine();

        }
    }
}