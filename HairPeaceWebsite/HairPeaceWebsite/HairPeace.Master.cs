using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class HairPeace : System.Web.UI.MasterPage
    {
        HairServiceClient client = new HairServiceClient();
        int counter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Usertype"] != null)
            {
                signIn.Visible = false;
                Logout.Visible = true;
                cartlink.Visible = true;
                checkoutlink.Visible = true;
                invoices.Visible = true;
                ChangePass.Visible = true;
                DAcc.Visible = true;
                cartTag();
                forMe.Visible = true;

                if (Session["Usertype"].ToString() == "Admin")
                {
                    truckTag();
                    Delivery.InnerHtml = "Orders [" + counter + "]";
                    AdminTools.Visible = true;
                }
                else if (Session["Usertype"].ToString() == "Manager")
                {
                    truckTag();
                    Delivery.InnerHtml = "Orders [" + counter + "]";
                    AdminTools.Visible = true;
                    search.Visible = true;
                    register.Visible = true;
                }
            }
            
        }

        private void cartTag()
        {
            int i = client.getTotalItems(Convert.ToInt32(Session["ID"].ToString()));
            CartIcon.Visible = true;
            CartIcon.InnerHtml = "<span class='icon-shopping_cart'></span>[" + i + "]";
        }

        private void truckTag()
        {
            
            dynamic tings = client.getStatusOrders();

            foreach(order_Attendence o in tings)
            { counter++; }
            DeliveryIcon.Visible = true;
            DeliveryIcon.InnerHtml = "<span class='icon-truck'>[" + counter + "]</span>";
        }

    }
}