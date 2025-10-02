using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadePaciente
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Pessoa paciente = new Pessoa();
            paciente.CadastrarPaciente();
            paciente.ListarPaciente();
            paciente.AtenderPaciente();
            paciente.AlterarDados();
            
        }
    }
}
