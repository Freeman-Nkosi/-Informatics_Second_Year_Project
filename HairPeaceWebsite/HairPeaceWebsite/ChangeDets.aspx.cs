using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class ChangeDets : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            if(client.ChangePassWord(Session["email"].ToString(), initPass.Value))
            {
                HttpContext.Current.Response.Write("<script>window.alert('Password Changed')</script>");
            }
            Response.Redirect("Home.aspx");



        }
    }
}