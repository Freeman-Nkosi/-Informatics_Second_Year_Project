<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="ReportsSold.aspx.cs" Inherits="HairPeaceWebsite.ReportsSold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ftco-section bg-light">
    	<div class="container-fluid">

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
          	            <h2 class="big">hairpeace</h2>
                        <h2 class="mb-4">Product Sold</h2>
                    </div>
                </div>    		
    	    </div>

    		<table class="table">
                <thead class="thead-primary">
                    <tr class="text-center">
                        <th>Product Name</th>
                        <th>Serial Number</th>
                        <th>Price</th>
                        <th>Number of Products Sold<th>
                    </tr>
                </thead>

                <tbody id="ProductsSold" runat="server">


                </tbody>     
           </table>
    	</div>
    </section>
</asp:Content>
