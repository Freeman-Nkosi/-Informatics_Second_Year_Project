<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="ReportsInterface.aspx.cs" Inherits="HairPeaceWebsite.ReportsInterface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="ftco-section contact-section bg-light">
            <div class="container">
            
              <div class="row row justify-content-center">
                <div class="col-md-6 order-md-last d-flex">
                  <div class="bg-white p-5 contact-form">
                      <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                          <h2 class="mb-5">Available Reports</h2>
                      </div>
                    <div>
                        <p>1. <a href="ReportsSold.aspx">Most Sold Products</a></p>
                        <p>2. <a href="ReportsIControl.aspx">Inventory Control</a></p>
                        <p>3. <a href="ReportsRegUsers.aspx">Number of registered users per day</a></p>
                        <p>4. <a href="AvsD.aspx">Active Vs. Inactive Users</a></p>
                        <p>5. <a href="Reports.aspx">Pages Visits</a></p>
                        
                    </div>
                      </div>
                  
                  </div>
                
              </div>
                
            </div>
         </section>

</asp:Content>
