using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrograV_Clase8
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSendData_Click(object sender, EventArgs e)
        {
            // Response.Redirect("");

            StringBuilder listQueryStrings = new StringBuilder();

            // Add query string of customerName
            listQueryStrings.Append("customerName=");
            listQueryStrings.Append(HttpUtility.UrlEncode(txtCustomerName.Text));


            // Add query string of customerLastname
            listQueryStrings.Append("&customerLastname=");
            listQueryStrings.Append(HttpUtility.UrlEncode(txtCustomerLastname.Text));


            // Add query string of customerCountry
            listQueryStrings.Append("&customerCountry=");
            listQueryStrings.Append(HttpUtility.UrlEncode(txtCustomerContry.Text));

            // Add query string of customerPhone
            listQueryStrings.Append("&customerAge=");
            listQueryStrings.Append(HttpUtility.UrlEncode(txtCustomerAge.Text));


            // Add query string of customerPhone
            listQueryStrings.Append("&customerPhone=");
            listQueryStrings.Append(HttpUtility.UrlEncode(txtCustomerPhone.Text));

            Response.Redirect("~/Pages/FormQueryStrings?" + listQueryStrings.ToString());
        }
    }
}