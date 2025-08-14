using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Calculadora
    {
        public float parcelaA { private set; get; }
        public float parcelaB { private set; get; }

        public Calculadora (float parcelaA, float parcelaB)
        {
            this.parcelaB = parcelaB;
            this.parcelaA = parcelaA;
        }

        public float Soma()
        {
            return parcelaA + parcelaB;
        }

        public float Subtrai()
        {
            return parcelaA - parcelaB;
        }

        public float Multiplica()
        {
            return parcelaA * parcelaB;
        }

        public float Divide()
        {
            if (parcelaB == 0) throw new Exception("Divisão por zero");
            return parcelaA / parcelaB;
        }
        public float Raiz()
        {
            if (parcelaA < 0)
            {
                throw new Exception("Não é possível calcular a raiz quadrada de um número negativo.");
            }

            return (float)Math.Sqrt(parcelaA); 
        }

    }
}

