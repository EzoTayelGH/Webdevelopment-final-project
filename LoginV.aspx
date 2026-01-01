
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginV.aspx.cs" Inherits="Masculinezft.LoginV" %>
<!DOCTYPE html>
<html lang="en" xmls="org/1999/xhtmhttp://www.w3.l">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Masculine/login</title>
    <link rel="stylesheet" href="login.css" type="text/css" />
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
      <h1 id="signInHeading">Login</h1>
      <div id="login-page">
        <asp:Label ID="ErrorLabel" runat="server" CssClass="error-label" Visible="false"></asp:Label>
    
        <label for="emailInput">Email</label>
        <asp:TextBox ID="emailInput" runat="server" TextMode="Email" CssClass="input-field"></asp:TextBox>
    
        <label for="passWord">Password</label>
        <asp:TextBox ID="passWord" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
    
        <asp:Button ID="btnLogin" CssClass="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" />
    
        <p style="color: white; text-align: center; margin-top: 20px;">
        Don't have an account? <a href="SignupV.aspx" style="color: #d4af37;">Sign up</a>
        </p>
      </div>
    </form>
  </body>
</html>
