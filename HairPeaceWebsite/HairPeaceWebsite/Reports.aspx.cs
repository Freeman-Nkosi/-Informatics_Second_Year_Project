using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using HairPeaceWebsite.PeaceReference;

namespace HairPeaceWebsite
{
    public partial class Reports : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            loadPageTings();
        }

        void loadPageTings()
        {
            string[] x = new string[7];
            int[] y = new int[7];

            x[0] = "Catalog";
            x[1] = "Invoices";
            x[2] = "Cart";
            x[3] = "Tutorials";
            x[4] = "About";
            x[5] = "Contact";
            x[6] = "Product Information";

            //int the y array put in the values from the database in order
            dynamic data = client.getTracking();
            int i = 0;
            foreach(PTracking p in data)
            {
                y[i] = p.nVisists;
                i++;

            }

            Chart3.Series[0].Color = Color.LightPink;
            Chart3.ChartAreas[0].AxisX.Title = "Page Visited";
            Chart3.ChartAreas[0].AxisY.Title = "Number of Users";

            Chart3.ChartAreas[0].AxisX.TitleForeColor = Color.LightPink;
            Chart3.ChartAreas[0].AxisY.TitleForeColor = Color.LightPink;


            Chart3.ChartAreas[0].AxisY.TitleForeColor = Color.LightPink;

            Chart3.Series[0].Points.DataBindXY(x, y);
            Chart3.Series[0].ChartType = SeriesChartType.StackedColumn;
        }
    }
}