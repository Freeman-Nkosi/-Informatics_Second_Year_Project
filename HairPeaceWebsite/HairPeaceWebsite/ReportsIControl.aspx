<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="ReportsIControl.aspx.cs" Inherits="HairPeaceWebsite.ReportsIControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="ftco-section bg-light">
    	<div class="container-fluid">

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
          	            <h2 class="big">hairpeace</h2>
                        <h2 class="mb-4">Inventory Control</h2>
                    </div>
                </div>    		
    	    </div>

    		<table class="table">
                <thead class="thead-primary">
                    <tr class="text-center">
                        <th>Product Name</th>
                        <th>Serial Number</th>
                        <th>Quantity</th>
                    </tr>
                </thead>

                <tbody id="Inventory" runat="server">

                    <tr class="text-center">
                        <td>
                            <div class="product-name">
                                <p>Name of Products</p>
                            </div>
                        </td>
                        <td class="price">AAA-BBB-CCC</td>
                        <td class="price">5</td>
                        
                    </tr>

                </tbody>     
           </table>
    	</div>
    </section>
</asp:Content>
