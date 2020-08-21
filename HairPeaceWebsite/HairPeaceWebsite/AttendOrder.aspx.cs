using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class AttendOrder : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            string display = "";

            dynamic AOrders = client.getA_Orders();
            
            foreach(order_Attendence order in AOrders)
            {
                foreach (order_Attendence oder in AOrders)
                {
                    if (client.getOrderDate(oder.Order_ID).Equals(client.getOrderDate(order.Order_ID)))
                    {
                        display += "<tr class='text-center'>";
                        display += "<td><a href='DeliveryDetails.aspx?ID=" + order.Order_ID + "'>" + order.Order_ID + "</a></td>";
                        display += "<td>" + client.getOrderDate(order.Order_ID) + "</td>";
                        display += "<td class='product-name'>";
                        if (order.Status.Equals(1))
                        {
                            display += "<h3><span class='icon-thumbs-up' style='color:lightgreen'></span> Ready For Delivery</h3>";

                        }
                        else
                        {
                            display += "<h3><span class='icon-thumbs-down' style='color:red'></span> Order Pending</h3>";

                        }

                        display += "</td></tr>";
                    }
                }
            }
            Orders.InnerHtml = display;

        }
    }
}