using System;
using Wrox.Samples;

public partial class Demos_CalculatorDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalculateButton_Click(object sender, EventArgs e)
    {

        if (!String.IsNullOrWhiteSpace(ValueBox1.Text) &&
            !String.IsNullOrWhiteSpace(ValueBox2.Text))
        {
            try
            {


                double result = 0;
                double value1 = Convert.ToDouble(ValueBox1.Text);
                double value2 = Convert.ToDouble(ValueBox2.Text);

                switch (OperatorList.SelectedValue)
                {
                    case "+":
                        result = Calculator.Add(value1, value2);
                        break;
                    case "-":
                        result = Calculator.Subtract(value1, value2);
                        break;
                    case "/":
                        result = Calculator.Divide(value1, value2);
                        break;
                    case "*":
                        result = Calculator.Multiply(value1, value2);
                        break;
                }          
                ResultLabel.Text = result.ToString();

            }
            catch (Exception ex)
            {
                ResultLabel.ForeColor = System.Drawing.Color.Red; // Why this doesn't work???
                ResultLabel.Text = ex.Message;
            }
        }
    }
}