using FakeDB.IBGE;
using Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapConsoleApp2.Desafios.DesafioEncontro33
{
    public class DesafioDojo : Desafio
    {
        public DesafioDojo() : base()
        { }

        public override void Executar()
        {
            bool sair = false;
            while (true)
            {
                Impressoes.ImprimirCabecalho("-- MENU PRINCIPAL --");
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
                    Impressoes.ImprimirRodape("-- Finalizando --");
                    break;
                }
            }

        }

        private void Exercicio04()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 04 --");
            Console.Write("Informe o nome do Estado:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.Descricao.StartsWith(nome)).ToList();
            Impressoes.ImprimirEstados(estados);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 04 --");
        }

        private void Exercicio05()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 05 --");
            Console.Write("Informe a sigla de UF do Estado:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.SiglaUF.StartsWith(nome)).ToList();
            Impressoes.ImprimirEstados(estados);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 05 --");
        }

        private void Exercicio06()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 06 --");
            Console.Write("Informe a sigla de UF do Estado:");
            string nome = Console.ReadLine();
            List<Estado> estados = EstadoFakeFB.Estados.Where(est => est.RegiaoBrasil.StartsWith(nome)).ToList();
            Impressoes.ImprimirEstados(estados);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 06 --");
        }

        private void Exercicio07()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 07 --");
            Console.Write("Informe o nome do Município:");
            string nome = Console.ReadLine();
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.Descricao.StartsWith(nome)).ToList();
            Impressoes.ImprimirMunicipios(municipios);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 07 --");
        }

        private void Exercicio08()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 08 --");
            Console.Write("Informe a sigla do Estado o qual pertence o Município:");
            string nome = Console.ReadLine();
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.SiglaUF.StartsWith(nome)).ToList();
            Impressoes.ImprimirMunicipios(municipios);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 08 --");
        }

        private void Exercicio09()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 09 --");
            Console.Write("Informe o código IBGE 7 do Município:");
            int cod = Convert.ToInt32(Console.ReadLine());
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.CodigoIBGE7 == cod).ToList();
            Impressoes.ImprimirMunicipios(municipios);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 09 --");
        }

        private void Exercicio10()
        {
            Impressoes.ImprimirCabecalho("-- EXERCÍCIO 10 --");
            Console.Write("Informe o CEP do Município:");
            int cep = Convert.ToInt32(Console.ReadLine());
            List<Municipio> municipios = MunicipioFakeDB.Municipios.Where(mun => mun.Cep == cep).ToList();
            Impressoes.ImprimirMunicipios(municipios);
            Impressoes.ImprimirRodape("-- FIM EXERCÍCIO 10 --");
        }
    }
}
