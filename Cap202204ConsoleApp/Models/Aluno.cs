using System;

namespace Cap202204ConsoleApp.Models
{
    public class Aluno
    {
        private int codigo;

        private string nome;

        private int idade;

        private double altura;

        public int Codigo
        { 
            get { return codigo; }
            set { codigo = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public int Idade
        { 
            get { return idade; }
            set { idade = value; }
        }

        public double Altura
        { 
            get { return altura; }
            set { altura = value; }
        }

        public Aluno()
        { }

        public Aluno(int codigo, string nome, int idade, double altura)
        { 
            this.codigo = codigo;
            this.nome = nome;
            this.idade = idade;
            this.altura = altura;
        }



        public void Imprimir()
        {
            Console.WriteLine("{0} - {1} - {2} - {3}", this.codigo, this.nome, this.idade, this.altura);
        }
    }
}
