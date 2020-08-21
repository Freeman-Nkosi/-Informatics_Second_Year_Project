<%@ Page Title="" Language="C#" MasterPageFile="~/HairPeace.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HairPeaceWebsite.Register" %>
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
              <div class="form-group row justify-content-center">
          <div class="col-md-6 order-md-last d-flex">
            <div class="bg-white p-5 contact-form">
                <div class="site-section-heading text-center mb-5 w-border col-md-6 mx-auto">
                    <h2 class="mb-5">Register</h2>
                </div>
                <div class="form-group">
                  <label class="font-weight-bold">Name</label>
                <input type="text" id="name" class="form-control" runat="server">
              </div>
                <div class="form-group">
                  <label class="font-weight-bold">Surname</label>
                <input type="text" id="surname" class="form-control" runat="server">
              </div>
              <div class="form-group">
                  <label class="font-weight-bold">Email</label>
                <input type="email" id="email" class="form-control" runat="server">
              </div>
              <div class="form-group">
                  <label class="font-weight-bold">Password</label>
                  </div>
             <div class="form-group input-container">
                <input type="password"  id="userPassword" class="userP form-control input-field" runat="server"><i class="fa fa-eye-slash" style="padding:20px; min-width:60px; text-align:center" id="eye" ></i>
                  <input type="text" class="passS" style="border:none; display:none;">
              </div>
                <div class="form-group">
                  <label class="font-weight-bold">Confirm Password</label>
                <input type="password" id="confPass" class="userCP form-control" runat="server">
                    <input type="text" class="cpS" style="border:none; display:none;">
              </div>
              <div class="form-group" runat="server" id="optUserType" visible="false">
                  <label class="font-weight-bold">Usertype</label>
                  <select id="Usertype" class="form-control" runat="server">
                   <option value="">Choose Usertype</option>
		           <option value="User">Customer</option>
		           <option value="Admin">Admin</option>
		          <option value="Manager">Manager</option>
		         </select>
              </div>
                
                <!--Changed Here -->
              <div class="form-group row justify-content-center">
                     <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn bFat py-3 px-5" OnClick="btnRegister_Click" disabled="true" />
                </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
