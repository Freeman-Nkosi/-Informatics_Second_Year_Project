<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="DeliveryDetails.aspx.cs" Inherits="HairPeaceWebsite.DeliveryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/hairpeace.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <section class="ftco-section">
                <div class="container">
                    
				    <div class="row justify-content-center mb-3 pb-3">
                        <div class="col-md-12 heading-section text-center ftco-animate">
          	                <h1 class="big">HAIRPEACE</h1>
                            <h2 class="mb-4">Customer Delivery Details</h2>
                        </div>
                    </div>    		
                    <div class="row justify-content-center">
                        <div class="col-md-12 ftco-animate">
                            <div class="ex2" runat="server" id="PersonalDetails" style="width:50%;">
                            </div>
                        <div class="row justify-content-center">
                           
                        </div>

                        <table class="table">
                            <thead class="thead-primary">
                                <tr class="text-center">
                                    <th>&nbsp;</th>
						            <th>Product Details</th>
                                    <th>Serial Number</th>
                                    <th>Quantity</th>
                                </tr>
                            </thead>

                            <tbody id="BoughtTings" runat="server" >
                            </tbody>     
                        </table>
                            <div class="row justify-content-center">
                                <asp:Button ID="btnReady" class="btn btn-primary py-3 px-4" runat="server" Text="Order Ready" OnClick="btnReady_Click" />
                                </div>
                        </div>
                </div>
           </div>
        
        </section>

</asp:Content>
