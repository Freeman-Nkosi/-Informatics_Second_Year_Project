<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="ChangeDets.aspx.cs" Inherits="HairPeaceWebsite.ChangeDets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <style>
     .input-container {
     display: -ms-flexbox; /* IE10 */
     display: flex;
     width: 100%;
     margin-bottom: 15px;
     }

     .wrapper {
    border:1px solid #000;
    display:inline-block;
    } 

     .icon {
    padding: 10px;
    color: black;
    min-width: 50px;
    text-align: center;
    }

    .input-field {
    width: 90%;
    padding: 20px;
    outline: none;
    }

   .input-field:focus {
    border: 2px solid dodgerblue;
    }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="ftco-section contact-section bg-light">
      <div class="container">
           <!--Changed Here -->
        <div class="row row justify-content-center">
          <div class="col-md-6 order-md-last d-flex">
            <div class="bg-white p-5 contact-form">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                    <h2 class="mb-5">Change Password</h2>
                </div>
              <div class="form-group">
                  <label class="font-weight-bold">New Password</label>
                   <div class="form-group input-container">
                <input type="password"  id="initPass" class="userP form-control input-field" runat="server"><i class="fa fa-eye-slash" style="padding:20px; min-width:60px; text-align:center" id="eye" ></i>
                  <input type="text" class="passS" style="border:none; display:none;">
              </div>
             
              </div>
              <div class="form-group">
                  <label class="font-weight-bold">Confirm Password</label>
                <input type="password" id="confPPass" class="userCP form-control" runat="server">
                  <input type="text" class="cpS" style="border:none; display:none;">
              </div>
                <!--Changed Here -->
              <div class="form-group row justify-content-center">
                  <asp:Button ID="btnChange" runat="server" Text="Change Password"  class="btn bFat py-3 px-5" OnClick="btnChange_Click" disabled="true" />
              </div>

                <div class="row form-group" visible="false" runat="server" id="messageDiv">
                    <div class="col-md-12">
                        <label class="font-weight-bold" for="message">Message</label>
                        <textarea name="message" id="message" cols="30" rows="2" class="form-control" placeholder="" runat="server"></textarea>
                    </div>
                </div>
                
            </div>
          </div>
        </div>
      </div>
    </section>

</asp:Content>
