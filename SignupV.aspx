<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupV.aspx.cs" Inherits="Masculinezft.SignupV" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Masculine/signup</title>
    <link rel="stylesheet" href="signup.css" type="text/css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
      integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <form id="form2" runat="server">
      <header>
        <nav>
          <ul>
            <li>
              <a href="index.aspx"><i class="fa-solid fa-house"></i></a>
            </li>
            <li>
              <a href="About.aspx"><i class="fa-solid fa-circle-info"></i></a>
            </li>
            <li>
              <a href="home.aspx"><i class="fa-solid fa-cart-arrow-down"></i></a>
            </li>
            <li>
              <a href="LoginV.aspx"><i class="fa-solid fa-user"></i></a>
            </li>
            <li>
              <a href="Contact.aspx"><i class="fa-solid fa-phone"></i></a>
            </li>
          </ul>
          <a href="settings.aspx" id="settings-icon">
            <i class="fa-solid fa-gear"></i>
          </a>
        </nav>
      </header>
      <h1 id="signUpHeading">Sign up</h1>
      <div id="login-page">
        <asp:Label ID="ErrorLabel" runat="server" CssClass="error-label" Visible="false"></asp:Label>
        <asp:Label ID="SuccessLabel" runat="server" CssClass="success-label" Visible="false"></asp:Label>
        
        <label for="emailInput">Email</label>
        <asp:TextBox ID="emailInput" runat="server" TextMode="Email" CssClass="input-field"></asp:TextBox>
        
        <label for="passWord">Password</label>
        <asp:TextBox ID="passWord" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
        
        <label for="firstName">First name</label>
        <asp:TextBox ID="firstName" runat="server" TextMode="SingleLine" CssClass="input-field"></asp:TextBox>
        
        <label for="lastName">Last name</label>
        <asp:TextBox ID="lastName" runat="server" TextMode="SingleLine" CssClass="input-field"></asp:TextBox>
        
        <label for="phoneNumber">Phone number</label>
        <asp:TextBox ID="phoneNumber" runat="server" TextMode="Phone" CssClass="input-field"></asp:TextBox>
        
        <asp:Button ID="btnSignup" CssClass="btnSignup" runat="server" Text="Create account" OnClick="btnSignup_Click" />
        
        <p style="color: white; text-align: center; margin-top: 20px;">
          Already have an account? <a href="LoginV.aspx" style="color: #d4af37;">Login</a>
        </p>
      </div>
    </form>
  </body>
</html>