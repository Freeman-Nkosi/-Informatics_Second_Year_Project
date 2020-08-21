using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class DeaAcc : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnDEA_Click(object sender, EventArgs e)
        {
            if (client.DeactivateAccount(Session["email"].ToString(), Session["Password"].ToString()))
            {
                Response.Redirect("Logout.aspx");
            }
        }
    }
}