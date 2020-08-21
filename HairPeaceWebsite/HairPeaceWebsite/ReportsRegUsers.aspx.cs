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
    public partial class ReportsRegUsers : System.Web.UI.Page
    {
        HairServiceClient client = new HairServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            loadChart();
        }

        void loadChart()
        {

            List<cLogInDays> lDays = new List<cLogInDays>();
            var D = client.Days();
            foreach (cLogInDays p in D)
            {
                lDays.Add(p);
            }
            string[] x = new string[lDays.Count];
            int[] y = new int[lDays.Count];

            for (int i = 0; i < lDays.Count; i++)
            {
                x[i] = D[i].strDate;

            }
            for (int i = 0; i < lDays.Count; i++)
            {
                y[i] = D[i].intNumberOfLogins;
            }


            Chart1.Series[0].Color = Color.LightPink;
            Chart1.ChartAreas[0].AxisX.Title = "Days";
            Chart1.ChartAreas[0].AxisY.Title = "Number of Users";

            Chart1.ChartAreas[0].AxisX.TitleForeColor = Color.LightPink;
            Chart1.ChartAreas[0].AxisY.TitleForeColor = Color.LightPink;


            Chart1.ChartAreas[0].AxisY.TitleForeColor = Color.LightPink;

            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.StackedColumn;
        }
    }
}