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
    /// Desafio Dojo - Criar o FakeDB de Estados e Municípios.
    /// 1 - Extrair os dados do SQL Server, Database Atacado202204.
    /// 2 - Criar as classes EstadoFakeDB e MunicipioFakeDB, com instâncias de listas(análogo ao que fizemos até agora com Pessoa).
    /// 3 - Analisar e Criar a classe RegiaoBrasilFakeDB.
    /// 4 - Criar um método que pesquise um Estado pelo Nome.
    /// 5 - Criar um método que pesquise um Estado pela Sigla.
    /// 6 - Criar um método que produza uma lista paralela com todos os Estados, filtrando pela Região do Brasil (listar os dados de RegiaoBrasilFakeDB).
    /// 7 - Criar um método que pesquise um Municío pelo Nome.
    /// 8 - Criar um método que produza uma lista paralela com todos os Municípios de um determinado estado(por sigla).
    /// 9 - Criar um método que pesquise um Municío pelo Código IBGE 7.
    /// 10 - Criar um método que pesquise um Municío pelo CEP.
    /// </summary>
    public class DesafioDojo
    {
        /// <summary>
        /// Construtor.
        /// </summary>
        public DesafioDojo()
        { }

        /// <summary>
        /// Método principal, para execução do código.
        /// </summary>
        public void Executar()
        {
            bool sair = false;
            while (true)
            {
                Console.Clear();
                Console.WriteLine("-- MENU PRINCIPAL --");
                Console.Write("Selecione um exercício (4 a 10) ou 0 para sair: ");
                int opcao = Convert.ToInt32(Console.ReadLine());
                switch (opcao)
                {
                    case 0:
                        sair = true;
                        break;
                    case 4:
                        this.Exercicio04();
                        break;
                    case 5:
                        this.Exercicio05();
                        break;
                    case 6:
                        this.Exercicio06();
                        break;
                    case 7:
                        this.Exercicio07();
                        break;
                    case 8:
                        this.Exercicio08();
                        break;
                    case 9:
                        this.Exercicio09();
                        break;
                    case 10:
                        this.Exercicio10();
                        break;
                    default:
                        break;
                }
                if (sair == true)
                {
                    Console.WriteLine("-- Finalizando --");
                    Console.WriteLine("-- Tecle <ENTER> para sair. --");
                    break;
                }
            }
        }

        /// <summary>
        ///  4 - Criar um método que pesquise um Estado pelo Nome.
        /// </summary>
        private void Exercicio04()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 04 --");
            Console.Write("Informe o nome do Estado:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.Descricao.StartsWith(nome)).ToList();
            foreach (Estado est in estados)
            {
                Console.Write("Código: {0} | ", est.Codigo);
                Console.Write("Nome: {0} | ", est.Descricao);
                Console.Write("Sigla: {0} | ", est.SiglaUF);
                Console.WriteLine("Região: {0} ", est.RegiaoBrasil);
            }
            Console.WriteLine("Total de Registros: {0}", estados.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 04 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 5 - Criar um método que pesquise um Estado pela Sigla.
        /// </summary>
        private void Exercicio05()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 05 --");
            Console.Write("Informe a sigla de UF do Estado:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.SiglaUF.StartsWith(nome)).ToList();
            foreach (Estado est in estados)
            {
                Console.Write("Código: {0} | ", est.Codigo);
                Console.Write("Nome: {0} | ", est.Descricao);
                Console.Write("Sigla: {0} | ", est.SiglaUF);
                Console.WriteLine("Região: {0} ", est.RegiaoBrasil);
            }
            Console.WriteLine("Total de Registros: {0}", estados.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 05 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 6 - Criar um método que produza uma lista paralela com todos os Estados, filtrando pela Região do Brasil (listar os dados de RegiaoBrasilFakeDB).
        /// </summary>
        private void Exercicio06()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 06 --");
            foreach (Regiao reg in RegiaoFakeDB.Regioes)
            {
                Console.Write("Código: {0} | ", reg.Codigo);
                Console.WriteLine("Descrição: {0} ", reg.Descricao);
            }
            Console.Write("Escolha uma região pelo nome:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.RegiaoBrasil.StartsWith(nome)).ToList();
            foreach (Estado est in estados)
            {
                Console.Write("Código: {0} | ", est.Codigo);
                Console.Write("Nome: {0} | ", est.Descricao);
                Console.Write("Sigla: {0} | ", est.SiglaUF);
                Console.WriteLine("Região: {0} ", est.RegiaoBrasil);
            }
            Console.WriteLine("Total de Registros: {0}", estados.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 06 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 7 - Criar um método que pesquise um Municío pelo Nome.
        /// </summary>
        private void Exercicio07()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 07 --");
            Console.Write("Informe o nome do Município:");
            string nome = Console.ReadLine();
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.Nome.StartsWith(nome)).ToList();
            foreach (Municipio mun in municipios)
            {
                Console.Write("Código: {0} | ", mun.Codigo);
                Console.Write("Nome: {0} | ", mun.Nome);
                Console.Write("Sigla: {0} | ", mun.SiglaUF);
                Console.WriteLine("Cód. IBGE 7: {0} ", mun.CodigoIBGE7);
            }
            Console.WriteLine("Total de Registros: {0}", municipios.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 07 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 8 - Criar um método que produza uma lista paralela com todos os Municípios de um determinado estado(por sigla).
        /// </summary>
        private void Exercicio08()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 08 --");
            Console.Write("Informe a sigla do Estado o qual pertence o Município:");
            string nome = Console.ReadLine();
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.SiglaUF.StartsWith(nome)).ToList();
            foreach (Municipio mun in municipios)
            {
                Console.Write("Código: {0} | ", mun.Codigo);
                Console.Write("Nome: {0} | ", mun.Nome);
                Console.Write("Sigla: {0} | ", mun.SiglaUF);
                Console.WriteLine("Cód. IBGE 7: {0} ", mun.CodigoIBGE7);
            }
            Console.WriteLine("Total de Registros: {0}", municipios.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 08 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 9 - Criar um método que pesquise um Municío pelo Código IBGE 7.
        /// </summary>
        private void Exercicio09()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 09 --");
            Console.Write("Informe o código IBGE 7 do Município:");
            int cod = Convert.ToInt32(Console.ReadLine());
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.CodigoIBGE7 == cod).ToList();
            foreach (Municipio mun in municipios)
            {
                Console.Write("Código: {0} | ", mun.Codigo);
                Console.Write("Nome: {0} | ", mun.Nome);
                Console.Write("Sigla: {0} | ", mun.SiglaUF);
                Console.WriteLine("Cód. IBGE 7: {0} ", mun.CodigoIBGE7);
            }
            Console.WriteLine("Total de Registros: {0}", municipios.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 09 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }

        /// <summary>
        /// 10 - Criar um método que pesquise um Municío pelo CEP.
        /// </summary>
        private void Exercicio10()
        {
            Console.Clear();
            Console.WriteLine("-- EXERCÍCIO 10 --");
            Console.Write("Informe o CEP do Município:");
            int cep = Convert.ToInt32(Console.ReadLine());
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.Cep == cep).ToList();
            foreach (Municipio mun in municipios)
            {
                Console.Write("Código: {0} | ", mun.Codigo);
                Console.Write("Nome: {0} | ", mun.Nome);
                Console.Write("Sigla: {0} | ", mun.SiglaUF);
                Console.WriteLine("Cód. IBGE 7: {0} ", mun.CodigoIBGE7);
            }
            Console.WriteLine("Total de Registros: {0}", municipios.Count());
            Console.WriteLine("-- FIM EXERCÍCIO 10 --");
            Console.WriteLine("-- Tecle <ENTER> para voltar. --");
            Console.ReadLine();
        }
    }
}

