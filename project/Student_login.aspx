<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_login.aspx.cs" Inherits="Student_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login Page</title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="login-box">
    <img src="https://i.ibb.co/bsB7GqW/avatar.png" class="avatar"/>
        <h1>Welcome Student! Login Here</h1>
            
            <p>Username</p>
            <asp:TextBox ID="username" runat="server" placeholder="Enter Username"/>
            <p>Password</p>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Password" type="password"/>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    
           <asp:Label ID="error" runat="server" Text="" ForeColor="Red" Font-Underline="True" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
