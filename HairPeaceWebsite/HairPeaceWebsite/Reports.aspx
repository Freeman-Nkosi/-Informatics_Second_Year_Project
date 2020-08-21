<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="HairPeaceWebsite.Reports" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    

    <section class="ftco-section bg-light">
    	<div class="container-fluid">

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
          	            <h2 class="big">hairpeace</h2>
                        <h2 class="mb-4">Pages Visits</h2>
                    </div>
                </div>    		
    	    </div>

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
        <asp:Chart ID="Chart3" runat="server" Height="419px" Width="732px">
            <Series>
                <asp:Series Name="Series1" ChartArea="ChartArea1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
            </div>
        </div>
    		
    	</div>
    </section>



</asp:Content>
