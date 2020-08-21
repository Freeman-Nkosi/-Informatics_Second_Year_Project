using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class OrderStatus : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            int order = Convert.ToInt32(Request.QueryString["ID"]);
            client.changeStatus(order);
            Response.Redirect("AttendOrder.aspx");
        }
    }
}