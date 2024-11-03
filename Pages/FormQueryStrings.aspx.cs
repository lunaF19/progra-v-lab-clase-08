using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrograV_Clase8.Data;

namespace PrograV_Clase8.Pages
{
    public partial class FormQueryStrings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                CustomerEntites entitiesCustomer = new CustomerEntites();
                entitiesCustomer.sp_CreateCustomer(
                    Request.QueryString["customerName"],
                    Request.QueryString["customerLastname"],
                    Request.QueryString["customerCountry"],
                    Int32.Parse(Request.QueryString["customerPhone"]),
                    Int32.Parse(Request.QueryString["customerAge"])
                    );

                lblQRCustomerName.Text = Request.QueryString["customerName"];
                lblQRCustomerLastname.Text = Request.QueryString["customerLastname"];
                lblQRCustomerCountry.Text = Request.QueryString["customerCountry"];
                lblQRCustomerPhone.Text = Request.QueryString["customerPhone"];
                lblQRCustomerAge.Text = Request.QueryString["customerAge"];
            } catch
            {

            }
            
            

            

        }
    }
}