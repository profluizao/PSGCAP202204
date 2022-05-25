using System;

namespace Cap202204ConsoleApp.Models
{
    public class Pessoa
    {
        private int codigo;

        private string nome;

        private string sobreNome;

        private int idade;

        private double altura;

        private double peso;

        private DateTime dtNascimento;

        private string naturalidade;

        private string nacionalidade;

        private string sexo;

        private string cpf;

        private string rg;

        private string telefone;

        private string email;

        private string endereco;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nome { get => nome; set => nome = value; }
        public string SobreNome { get => sobreNome; set => sobreNome = value; }
        public int Idade { get => idade; set => idade = value; }
        public double Altura { get => altura; set => altura = value; }
        public double Peso { get => peso; set => peso = value; }
        public DateTime DtNascimento { get => dtNascimento; set => dtNascimento = value; }
        public string Naturalidade { get => naturalidade; set => naturalidade = value; }
        public string Nacionalidade { get => nacionalidade; set => nacionalidade = value; }
        public string Sexo { get => sexo; set => sexo = value; }
        public string Cpf { get => cpf; set => cpf = value; }
        public string Rg { get => rg; set => rg = value; }
        public string Telefone { get => telefone; set => telefone = value; }
        public string Email { get => email; set => email = value; }
        public string Endereco { get => endereco; set => endereco = value; }

        public Pessoa()
        { }

        public Pessoa(int codigo, string nome, string sobreNome, string cpf, string telefone)
        { 
            this.codigo = codigo;
            this.nome = nome; 
            this.sobreNome = sobreNome;
            this.cpf = cpf;
            this.telefone = telefone;
        }

        public Pessoa(int codigo, string nome, string sobreNome, string cpf, string telefone,
            string sexo, DateTime dataNascimento, string email)
        {
            this.codigo = codigo;
            this.nome = nome;
            this.sobreNome = sobreNome;
            this.cpf = cpf;
            this.telefone = telefone;
            this.sexo = sexo;
            this.dtNascimento = dataNascimento;
            this.email = email;
        }
    }
}
