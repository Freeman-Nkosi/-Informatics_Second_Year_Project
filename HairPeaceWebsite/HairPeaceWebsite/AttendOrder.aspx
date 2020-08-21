<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="AttendOrder.aspx.cs" Inherits="HairPeaceWebsite.AttendOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="ftco-section bg-light">
    	<div class="container-fluid">

            <div class="container">
				<div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
          	            <h2 class="big">HAIRPEACE</h2>
                        <h2 class="mb-4">Orders</h2>
                    </div>
                </div>    		
    	    </div>

    		<table class="table">
                <thead class="thead-primary">
                    <tr class="text-center">
                        <th>Order ID</th>
                        <th>Date Placed</th>
                        <th>Status<th>
                    </tr>
                </thead>

                <tbody id="Orders" runat="server">
                    <tr class="text-center">
                        <td>Order ID</td>
                        <td>2019/03/03</td>
                        <td class="product-name">
                           <h3><span class="icon-thumbs-up" style="color:green"></span> Ready For Delivery</h3>
						        	<p class="btn btn-primary py-3 px-5">Order Prepared</p>
                       </td>
                    </tr>

                </tbody>     
           </table>
    	</div>
    </section>

</asp:Content>
