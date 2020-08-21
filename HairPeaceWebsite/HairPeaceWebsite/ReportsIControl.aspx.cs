using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class ReportsIControl : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic prods = client.prodList();

            string display = "";

            foreach (Prod p in prods)
            {
                display += "<tr class='text-center'><td>";
                display += "<div class='product-name'>";
                display += "<p>" + p.prodName + "</p></div>";//Name
                display += "</td><td class='price'>" + p.sNumber + "</td>";//Serial Number
                display += "<td class='price'>" + p.Qty + "</td>";//Quantity
                display += "</tr>";
            }



            Inventory.InnerHtml = display;

        }
    }
}