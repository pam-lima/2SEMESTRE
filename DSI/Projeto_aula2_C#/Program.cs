﻿using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace consolinho
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double indice, peso, altura;

            Console.Write("Digite seu peso: ");
            peso = double.Parse(Console.ReadLine());
            Console.Write("Digite sua altura: ");
            altura = double.Parse(Console.ReadLine());
            indice = peso / (altura * altura);
            Console.WriteLine("Seu IMC é {0} kg", indice);
            if (indice < 18.5){
                Console.WriteLine("Você está abaixo do peso");
            }
            else if (indice >= 18.5 && indice <= 24.9){
                Console.WriteLine("Você está na média de peso");
            }
            else if (indice >= 25 && indice <= 29.9){
                Console.WriteLine("Você está com obesidade de grau I");
            }
            else if (indice >= 30 && indice <= 34.9){
                Console.WriteLine("Você está com obesidade de grau II");
            }
            else if (indice >= 35 && indice <= 39.9){
                Console.WriteLine("Você está com obesidade de grau III");
            }
            else { 
                Console.WriteLine("Você está com obesidade grave");
            }
        }
    }
}
