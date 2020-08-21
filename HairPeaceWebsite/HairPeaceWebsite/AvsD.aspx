<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="AvsD.aspx.cs" Inherits="HairPeaceWebsite.AvsD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="ftco-section bg-light">
    	<div class="container-fluid">

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
          	            <h2 class="big">hairpeace</h2>
                        <h2 class="mb-4">Active Vs. Inactive Users</h2>
                    </div>
                </div>    		
    	    </div>

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
        <asp:Chart ID="Chart1" runat="server" Height="427px" Width="946px">
            <Series>
                <asp:Series Name="Series1"></asp:Series>
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
