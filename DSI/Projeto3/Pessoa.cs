using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projeto3
{
    internal class Pessoa
    {
        public double peso;
        public double altura;
        public double imc;
        public string nome;

        public void PerguntarNome()
        {
            Console.WriteLine("Digite seu nome: ");
            nome = Console.ReadLine();
        }
        public void infoimc()
        {
            Console.WriteLine("Digite seu peso: ");
            peso = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite sua altura: ");
            altura = double.Parse(Console.ReadLine());
        }
        public void Calculo()
        {
            imc = peso / (altura * altura);
            Console.WriteLine("Seu imc é: " + imc);

            if (imc < 18.5)
            {
                Console.WriteLine("Você está muito magro(a)");
            }
            else if (imc > 18.5 && imc <= 24.9)
            {
                Console.WriteLine("Você está com peso normal");
            }
            else if (imc >= 25 && imc <= 29.9)
            {
                Console.WriteLine("Você está com sobrepeso");
            }
            else if (imc >= 30 && imc <= 34.9)
            {
                Console.WriteLine("Você está com obesidade I");
            }
            else if (imc >= 35 && imc <= 39.9)
            {
                Console.WriteLine("Você está com obesidade II");
            }
            else
            {
                Console.WriteLine("Você está com obesidade III");
            }

        }
    }
}