using Atacado.FakeDB.RH;
using Atacado.Modelo.Ancestral;
using Atacado.Modelo.RH;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesafiosDaGripe02
{
    public static class ProblemasFuncionario
    {
        public static void ExibirMenu()
        {
            int codigo = 0;
            codigo = ObterCodigo();
            ProcessarOpcoes(codigo);
        }

        private static int ObterCodigo()
        {
            int codigo = 0;
            while (true)
            {
                Console.Write("Informe o código do Funcionário:");
                if (int.TryParse(Console.ReadLine(), out codigo) == false)
                {
                    Console.WriteLine("Código inválido, tente novamente.");
                    Console.ReadLine();
                    Console.Clear();
                }
                else
                {
                    break;
                }
            }
            return codigo;
        }


        private static void ProcessarOpcoes(int codigo)
        {
            while (true)
            {
                Console.WriteLine("A - Ativar Registro de Funcionário.");
                Console.WriteLine("I - Inativar Registro de Funcionário.");
                Console.Write("Selecione uma Opção:");
                string opcao = Console.ReadLine().ToUpper();
                if ((opcao != "A") && (opcao != "I"))
                {
                    Console.WriteLine("Opção inválida, tente novamente.");
                    Console.ReadLine();
                    Console.Clear();
                }
                else
                {
                    switch (opcao)
                    {
                        case "A":
                            Funcionario empA = AtivarRegistro(codigo);
                            Impressoes.ImprimirFuncionario(empA);
                            break;

                        case "I":
                            Funcionario empI = InativarRegistro(codigo);
                            Impressoes.ImprimirFuncionario(empI);
                            break;

                    }
                }
            }
        }

        private static Funcionario AtivarRegistro(int codigo)
        {
            Funcionario teste = FuncionarioFakeDB.Funcionarios.SingleOrDefault(fun => fun.Codigo == codigo);
            if (teste != null)
            {
                teste.Situacao = SituacaoEnum.Ativo;
            }
            return teste;
        }

        private static Funcionario InativarRegistro(int codigo)
        {
            Funcionario teste = FuncionarioFakeDB.Funcionarios.SingleOrDefault(fun => fun.Codigo == codigo);
            if (teste != null)
            {
                teste.Situacao = SituacaoEnum.Inativo;
            }
            return teste;
        }
    }
}
