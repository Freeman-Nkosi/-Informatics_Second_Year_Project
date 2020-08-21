using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class ReportsSold : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            dynamic Invoices = client.getAllInvoices();

            string inStock = "";
            //int prodSold = 0;
            //Response.Write("<script>window.alert('" + id + "')</script>");


            /**  foreach (tHistory His in Invoices)
               {
                   foreach (tHistory Story in Invoices)
                   {
                       int Quantity = 0;
                       Prod prod = null;
                       if (His.Prod_ID.Equals(Story.Prod_ID))
                       {
                           His.Quantity += Story.Quantity;
                           prod = client.GetProd(His.Prod_ID);

                       }

                       if(prod != null)
                       {
                           inStock += "<tr class='text-center'>";
                           inStock += "<td><div class='Product-Name'>";
                           inStock += "<p>" + prod.prodName + "</p></div></td>";//Name
                           inStock += "<td class='Serial Number'>" + prod.sNumber + "</td>";//Serial Number
                           inStock += "<td class='Price'>$" + Math.Round((prod.Price * Quantity), 2) + "</td><";//Price
                           inStock += "<td class='Quantity'>" + Quantity + "</td></tr>";//Prod Sold
                       }
                   }
               }

               ProductsSold.InnerHtml = inStock;
       */

            List<tHistory> HT = new List<tHistory>();
            List<tHistory> BT = new List<tHistory>();
            List<tHistory> OX = new List<tHistory>();
            List<int> r = new List<int>();
            Prod prod = null;
            foreach (tHistory His in Invoices)
            {
                HT.Add(His);
                BT.Add(His);
                OX.Add(His);

            }
            foreach (tHistory H in HT) {
                for(int i = 0; i < BT.Count; i++)
                {
                    if (H.purchase_ID != BT[i].purchase_ID && H.Prod_ID == BT[i].Prod_ID) {
                       H.Quantity += BT[i].Quantity;
                        r.Add(i);
                       // HT.Remove(HT[i]);
                    }
                }
               

            }
            foreach (int i in r) {
                HT.Remove(HT[i]);
            }
            foreach (tHistory H in HT) {
                prod = client.GetProd(H.Prod_ID);
                if (prod != null)
                {
                    inStock += "<tr class='text-center'>";
                    inStock += "<td><div class='Product-Name'>";
                    inStock += "<p>" + prod.prodName + "</p></div></td>";//Name
                    inStock += "<td class='Serial Number'>" + prod.sNumber + "</td>";//Serial Number
                    inStock += "<td class='Price'>$" + Math.Round((prod.Price * H.Quantity), 2) + "</td><";//Price
                    inStock += "<td class='Quantity'>" + H.Quantity + "</td></tr>";//Prod Sold
                }
            }
            ProductsSold.InnerHtml = inStock;

        }
    }
}