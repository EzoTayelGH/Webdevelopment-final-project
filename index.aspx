<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Masculinezft.index" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Masculine life</title>
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v7.1.0/css/all.css" />
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v7.1.0/css/sharp-solid.css" />
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v7.1.0/css/sharp-regular.css" />
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v7.1.0/css/sharp-light.css" />
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v7.1.0/css/duotone.css" />
    <link rel="stylesheet" href="styles.css" />
    <link rel="icon" type="image/png" href="favicon.png" />
  </head>
  <body>
    <header>
      <nav>
        <ul>
          <a href="index.aspx"><li><i class="fa-solid fa-house" title="Home"></i></li></a>
          <a href="About.aspx" target="_blank"><li><i class="fa-solid fa-circle-info" title="About"></i></li></a>
          <a href="home.aspx" target="_blank"><li><i class="fa-solid fa-cart-arrow-down" title="Shop"></i></li></a>
          <a href="Accounts.aspx" target="_blank"><li><i class="fa-solid fa-user" title="Account"></i></li></a>
          <a href="Contact.aspx" target="_blank"><li><i class="fa-solid fa-phone" title="Contact"></i></li></a>
        </ul>

        <a href="settings.aspx" target="_blank" id="settings-icon"><i class="fa-solid fa-gear" title="Settings"></i></a>
      </nav>
    </header>
    <div id="currentAccountSection" runat="server" class="current-account-display" visible="false">
        <i class="fa-solid fa-user-circle"></i>
        <span>Logged in as: <strong><asp:Label ID="lblCurrentAccount" runat="server" Text=""></asp:Label></strong></span>
    </div>
    <div class="mainPage">
      <h1>Masculine Life</h1>
      <img src="favicon.png" alt="logo" id="main-logo" />
      
      <section>
        <a href="home.aspx" class="button-class"> Explore</a>

        <a href="LoginV.aspx" class="button-class" id="login-btn" target="_blank">
          Login</a>

        <a href="SignupV.aspx" class="button-class" target="_blank">
          Sign up</a>
      </section>
    </div>
    <footer>©2025 Masculine Life. All rights reserved.</footer>
  

</body>

</html>
