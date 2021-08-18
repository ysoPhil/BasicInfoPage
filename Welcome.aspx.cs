using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Customer custObj = (Customer)Session["customer"];
                if (custObj != null)
                {
                    lblName.Text = "Name: "+ custObj.Name;
                    lblEmail.Text = "Email: "+custObj.Email;
                    lblMembership.Text = "Membership: "+custObj.Membership;
                    lblCompany.Text = "Company: "+custObj.Company;
                    lblAge.Text = "Age: "+InterpretAge(custObj.DOB);


                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
        string InterpretAge(string value)
        {
            string[] temp = value.Split('/');
            int month = int.Parse(temp[0]);
            int day = int.Parse(temp[1]);
            int year = int.Parse(temp[2]);
            DateTime now = DateTime.Now;
            int age = int.Parse(now.Year.ToString()) - year;
            day = day - int.Parse(now.Day.ToString());
            month = month - int.Parse(now.Month.ToString());
            if(day<= 0 && month<= 0)
            {
                age++;
            }
            return age.ToString();
        }
    }
}