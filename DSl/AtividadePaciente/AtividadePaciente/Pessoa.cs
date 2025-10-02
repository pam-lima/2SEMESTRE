using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Runtime.Serialization.Formatters;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace AtividadePaciente
{
    internal class Pessoa
    {
        public string nome;
        private double cpf;
        private double rg;
        private string endereco;
        public double datanasc;
        public int idade;
        public int telefone;
        public string email;

        public void CadastrarPaciente()
        {
            Console.WriteLine("Nome do Paciente: ");
            nome = Console.ReadLine();

            Console.WriteLine("CPF do Paciente: ");
            cpf = double.Parse(Console.ReadLine());

            Console.WriteLine("RG do Paciente: ");
            rg = double.Parse(Console.ReadLine());

            Console.WriteLine("Endereço do Paciente: ");
            endereco = Console.ReadLine();

            Console.WriteLine("Data de Nascimento do Paciente: ");
            datanasc = double.Parse(Console.ReadLine());

            Console.WriteLine("Idade do Paciente: ");
            idade = int.Parse(Console.ReadLine());

            Console.WriteLine("Telefone do Paciente: ");
            telefone = int.Parse(Console.ReadLine());

            Console.WriteLine("Email do Paciente: ");
            email = Console.ReadLine();
        }
        public void ListarPaciente()
        {
            int[] num = new int[15];
            Console.WriteLine(());
        }
        public void AtenderPaciente()
        {
            int[] num = new int[15];
            if ()
            {

            }
        }

    public void AlterarDados()
        {

        }
  
    }
}
