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
    public partial class AvsD : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            loadUsersChart();
        }

        void loadUsersChart()
        {
            string[] x = new string[2];
            int[] y = new int[2];


            //int the y array put in the values from the database in order
            y[0] = client.ActiveUsers();
            y[1] = client.InactiveUsers();


            x[0] = "Active";
            x[1] = "Inactive";

            Chart1.Series[0].Color = Color.LightPink;

            Chart1.ChartAreas[0].Name = "Active Users Vs. Inactive Users";
            Chart1.ChartAreas[0].AxisX.TitleForeColor = Color.LightPink;
            Chart1.ChartAreas[0].AxisY.TitleForeColor = Color.LightPink;

            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
        }
    }
}