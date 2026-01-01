<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Masculinezft.Contact" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Masculine | Contact</title>
    <link rel="stylesheet" href="contact.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav>
                <ul>
                    <li><a href="index.aspx"><i class="fa-solid fa-house"></i></a></li>
                    <li><a href="About.aspx"><i class="fa-solid fa-circle-info"></i></a></li>
                    <li><a href="home.aspx"><i class="fa-solid fa-cart-arrow-down"></i></a></li>
                    <li><a href="Accounts.aspx"><i class="fa-solid fa-user"></i></a></li>
                    <li><a href="Contact.aspx"><i class="fa-solid fa-phone"></i></a></li>
                </ul>
                <a href="settings.aspx" id="settings-icon"><i class="fa-solid fa-gear"></i></a>
            </nav>
        </header>

        <h1 id="contactHeading">Contact Us</h1>

        <div id="login-page"> 
            <asp:Label ID="SuccessLabel" runat="server" CssClass="success-label" Visible="false"></asp:Label>
            
            <label for="txtName">Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input-field" placeholder="Enter your name" MaxLength="40"></asp:TextBox>

            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input-field" placeholder="Enter your email" MaxLength="40"></asp:TextBox>

            <label for="txtPhone">Phone Number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="input-field" placeholder="+20 XXX XXX XXXX" MaxLength="20"></asp:TextBox>

            <label for="txtMessage">Question/Problem</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" CssClass="input-field question-input" placeholder="Describe your case briefly"></asp:TextBox>

            <asp:Button ID="submit_button" CssClass="btnSignup" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>

