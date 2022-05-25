using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Cap202204ConsoleApp.Models;

namespace Cap202204ConsoleApp.FakeDB
{
    public static class AlunoFakeDB
    {
        private static List<Aluno> alunos = new List<Aluno>();

        public static List<Aluno> Alunos
        {
            get 
            {
                if (alunos.Count() == 0)
                { 
                    AdicionarAlunos();
                }
                return alunos;
            }
        }

        private static void AdicionarAlunos()
        {
            alunos.Add(new Aluno(1, "Mateus", 18, 1.70));
            alunos.Add(new Aluno(2, "Lucas", 17, 1.84));
            alunos.Add(new Aluno(3, "Andressa", 25, 1.63));
            alunos.Add(new Aluno(4, "Luiz", 48, 1.70));
            alunos.Add(new Aluno(5, "Kali", 17, 1.68));
            alunos.Add(new Aluno(6, "Nélio", 26, 1.69));
        }
    }
}
