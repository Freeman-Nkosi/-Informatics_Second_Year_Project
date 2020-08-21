<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="DeaAcc.aspx.cs" Inherits="HairPeaceWebsite.DeaAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="ftco-section">
                <div class="container">
				    <div class="row justify-content-center mb-3 pb-3">
                        <div class="col-md-12">
                            <h3 class="mb-4 billing-heading">Deactivate Account</h3>
                	            <div>
										<div class="radio">
										  <label><input type="radio" name="optradio"> High Price</label><br/><br/>
										  <label><input type="radio" name="optradio"> Found A Better Site</label><br/><br/>
                                          <label><input type="radio" name="optradio"> Other</label><br/><br/>
                                             <div class="row form-group">
                                                <div class="col-md-12">
                                                    <label class="font-weight-bold" for="message">Message</label>
                                                    <textarea name="message" id="message" cols="30" rows="2" class="form-control" runat="server"></textarea>
                                                </div>
                                             </div>
                                            <asp:Button ID="btnDEA" runat="server" Text="Deactivate Account" class="btn btn-primary py-3 px-5" OnClick="btnDEA_Click"/>
										</div>
									</div>
                                </div>
                             </div>
                </div>
    </section>

    

</asp:Content>
