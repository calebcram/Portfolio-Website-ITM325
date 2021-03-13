using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesHW5.ContentPages
{
    public partial class SimpleCalc : System.Web.UI.Page
    {
        protected void OutPut(object sender, EventArgs e)
        {
            double Num1, Num2;


            if (AddButton.Checked)
            {
                Num1 = double.Parse(FirstNum.Text);
                Num2 = double.Parse(SecondNum.Text);

                OutPutBox.Text = Num1.ToString("N2") + " + " + Num2.ToString("N2") + " = " + (Num1 + Num2).ToString("N2");
            }
            else if (SubButton.Checked)
            {
                Num1 = double.Parse(FirstNum.Text);
                Num2 = double.Parse(SecondNum.Text);

                OutPutBox.Text = Num1.ToString("N2") + " - " + Num2.ToString("N2") + " = " + (Num1 - Num2).ToString("N2");
            }
            else if (MulButton.Checked)
            {
                Num1 = double.Parse(FirstNum.Text);
                Num2 = double.Parse(SecondNum.Text);

                OutPutBox.Text = Num1.ToString("N2") + " * " + Num2.ToString("N2") + " = " + (Num1 * Num2).ToString("N2");
            }
            else if (DivButton.Checked)
            {
                Num1 = double.Parse(FirstNum.Text);
                Num2 = double.Parse(SecondNum.Text);

                OutPutBox.Text = Num1.ToString("N2") + " / " + Num2.ToString("N2") + " = " + (Num1 / Num2).ToString("N2");
            }
        }

        protected void ClearForm(object sender, EventArgs e)
        {
            FirstNum.Text = "";
            SecondNum.Text = "";
            OutPutBox.Text = "";

            AddButton.Checked = false;
            SubButton.Checked = false;
            MulButton.Checked = false;
            DivButton.Checked = false;
        }
    }
}