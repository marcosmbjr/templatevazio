using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrjCalculadoraWeb.Classes;

namespace PrjCalculadoraWeb
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InicLabels();
        }

        private void InicLabels()
        {
            lbParcelaA.Text = "Parcela A: ";
            lbParcelaB.Text = "Parcela B: ";
        }

        protected void btClear_Click(object sender, EventArgs e)
        {
            lbResultado.Text =
            txtParcelaA.Text =
            txtParcelaB.Text = "";

        }


        protected void btOk_Click(object sender, EventArgs e)
        {
            if (!float.TryParse(txtParcelaA.Text, out float parcelaA) ||
                !float.TryParse(txtParcelaB.Text, out float parcelaB))
            {
                lbResultado.Text = "Parcela(s) digitada(s) inválidas!";
                return;
            }

            Calculadora c = new Calculadora(parcelaA, parcelaB);
            float resultado = 0;

            if (sender == btMais)
                resultado = c.Soma();
            else if (sender == btMenos)
                resultado = c.Subtrai();
            else if (sender == btVezes)
                resultado = c.Multiplica();
            else if (sender == btDivisao)
            {
                try
                {
                    resultado = c.Divide();
                }
                catch (Exception ex)
                {
                    lbResultado.Text = ex.Message;
                    return;
                }
            }

            else if (sender == btRaiz) 
            {
                if (parcelaA < 0)
                {
                    lbResultado.Text = "Não é possível calcular a raiz quadrada de um número negativo!";
                    return;
                }
                resultado = (float)Math.Sqrt(parcelaA);
              
            }

            lbResultado.Text = resultado.ToString();
        }

    }

}



