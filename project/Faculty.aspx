<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Faculty.aspx.vb" Inherits="Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty Login Page</title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="login-box">
    <img src="https://i.ibb.co/bsB7GqW/avatar.png" class="avatar"/>
        <h1>Welcome Faculty Member! Login Here</h1>
            
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username"/>
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password"/>
            <input type="submit" name="submit" value="Login"/>
            <a href="#">Forget Password</a>    
            
        
        
        </div>
    </form>
</body>
</html>
