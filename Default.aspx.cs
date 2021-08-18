using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                radBtnFree.Checked = true;
                ddlTimeZone.SelectedIndex = 0;
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //Filling up the customer object
                Customer custObj = new Customer();
                custObj.Name = txtName.Text;
                custObj.Email = txtEmail.Text;
                custObj.Company = txtCompany.Text;
                custObj.DOB = txtAge.Text;
                

                if (radBtnFree.Checked == true)
                {
                    custObj.Membership = radBtnFree.Text;
                }
                else if (radBtnBasic.Checked == true)
                {
                    custObj.Membership = radBtnBasic.Text;
                }
                else if (radBtnPremium.Checked == true)
                {
                    custObj.Membership = radBtnPremium.Text;
                }

                // Saving the customer object in the Session State
                Session["customer"] = custObj;

                Response.Redirect("~\\Welcome.aspx");
            }
        }

        protected void CustomValEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtEmail.Text.Contains(txtCompany.Text))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}