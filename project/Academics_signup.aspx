<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Academics_signup.aspx.cs" Inherits="Academics_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academics Sign Up Page</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Signup.css" />
    <meta name="viewport" content="width=device-width,
      initial-scale=1.0"/>
</head>
<body>
    <div class="container">
    <h1 class="form-title">Academics Member Registration</h1>
    <form id="form1" runat="server">
        <div class="main-user-info">
          <div class="user-input-box">
            <label for="fullName">Full Name</label>
            <input type="text"
                    id="fullName"
                    name="fullName"
                    placeholder="Enter Full Name"/>
          </div>
          <div class="user-input-box">
            <label for="username">Username</label>
            <asp:TextBox ID="username" runat="server" placeholder="Enter UserName"/>
          </div>
          <div class="user-input-box">
            <label for="email">Email</label>
            <input type="email"
                    id="email"
                    name="email"
                    placeholder="Enter Email"/>
          </div>
          <div class="user-input-box">
            <label for="phoneNumber">Phone Number</label>
            <input type="text"
                    id="phoneNumber"
                    name="phoneNumber"
                    placeholder="Enter Phone Number"/>
          </div>
          <div class="user-input-box">
            <label for="password">Password</label>
            <asp:TextBox ID="password" type="password" runat="server" placeholder="Enter Password"/>
          </div>
          <div class="user-input-box">
            <label for="confirmPassword">Confirm Password</label>
            <asp:TextBox ID="conpassword" type="password" runat="server" placeholder="Confirm Password" OnTextChanged="conpassword_TextChanged"/>
              <br />
              <asp:Label ID="passerror" runat="server" Text=""></asp:Label>
          </div>
        </div>
        <div class="gender-details-box">
          <span class="gender-title">Gender</span>
          <div class="gender-category">
            <input type="radio" name="gender" id="male"/>
            <label for="male">Male</label>
            <input type="radio" name="gender" id="female"/>
            <label for="female">Female</label>
            <input type="radio" name="gender" id="other"/>
            <label for="other">Other</label>
          </div>
        </div>
        <div class="form-submit-btn">
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
         
        </div>
    </form>
     </div>
</body>
</html>
