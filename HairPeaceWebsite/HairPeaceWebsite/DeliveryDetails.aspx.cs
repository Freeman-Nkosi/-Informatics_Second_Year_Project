using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class DeliveryDetails : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            int order = Convert.ToInt32(Request.QueryString["ID"]);
            List<tHistory> histories = new List<tHistory>();
            dynamic tings = client.getInvoice(order);
            bDetails details = client.getBillDetail(order);


            foreach (tHistory t in tings)
            {
                histories.Add(t);
            }

            PersonalDetails.InnerHtml = displayPersonalDetails(details);
            BoughtTings.InnerHtml = displayBoughtTings(histories);
        }


        private string displayPersonalDetails(bDetails details)
        {
            string display = "";

            display += "<p>Order Number: " + details.Order_ID + "</p><p>";
            display += "Bill To: " + details.Name + " " + details.Surname;
            display += "<br>" + details.House_Adress + ", " + details.Street_Adress;
            display += "<br>" + details.City + ", " + details.Province;
            display += "<br>Phone: " + details.Phone;
            display += "<br>Email: " + details.Email + "</p>";

            return display;
        }

        private string displayBoughtTings(List<tHistory> histories)
        {
            string display = "";

            foreach (tHistory t in histories)
            {
                Prod prod = client.GetProd(t.Prod_ID);

                display += "<tr class='text-center'>";
                display += "<td class='image-prod'><div class='img' style='background-image:url(" + prod.Image + ");'></div></td>";
                display += "<td class='product-name'>";
                display += "<h3>" + prod.prodName + "</h3>";
                display += "<p>" + prod.description + "</p></td>";
                display += "<td class='price'>" + prod.sNumber + "</td>";
                display += "<td class='price'>" + t.Quantity + "</td>";
                display += "</tr>";
            }

            return display;
        }

        protected void btnReady_Click(object sender, EventArgs e)
        {
            int order = Convert.ToInt32(Request.QueryString["ID"]);
            Response.Redirect("OrderStatus.aspx?ID=" + order);
        }
    }
}