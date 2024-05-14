<%@ Page Language="C#" AutoEventWireup="true" CodeFile="select_user.aspx.cs" Inherits="select_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .my-div{background-color:#99CCFF ;}
        .my-div:hover {
        background-color: #34b5f7;
    }
    </style>
</head>
<body style=" background-image: linear-gradient( 95.2deg, rgba(173,252,234,1) 26.8%, rgba(192,229,246,1) 64% );">
    <form id="form1" runat="server">
        <div>
           

            <div  style=" display: flex;  align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 20px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
        Select User Type</div>
        </div></div>

        </div>
        <div style=" padding:100px 100px 100px 100px; margin-left:10%;  display: inline-block; align-items:  center; height: 300px; width: 300px; font-size: 50px; justify-content: center; visibility: visible;">
    <div   class="my-div" style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius:20%; padding: 50px 50px 50px 50px;";>

       
            <asp:Label ID="Label1" runat="server" Text="STUDENT" ></asp:Label><br /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Student_signup.aspx" >Sign UP</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Student_login.aspx" >Login</asp:LinkButton>
         
        </div></div>

        <div style=" padding:100px 100px 100px 100px; margin:auto; display: inline-block; align-items:  center; height: 300px; width: 300px; font-size: 50px; justify-content: center; visibility: visible;">
    <div   class="my-div" style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius:20%; padding: 50px 50px 50px 50px;";>
        <asp:Label ID="Label2" runat="server" Text="FACULTY"></asp:Label><br /><br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Faculty_signup.aspx" >Sign UP</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Facult_login.aspx" >Login</asp:LinkButton>
        </div></div>
 <div style=" padding:100px 100px 100px 100px; margin:auto; display: inline-block; align-items:  center; height: 300px; width: 300px; font-size: 50px; justify-content: center; visibility: visible;">
    <div   class="my-div" style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);border-radius:20%; padding: 50px 50px 50px 50px;";>

        <asp:Label ID="Label3" runat="server" Text="Academic"></asp:Label><br /><br />
        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/Academics_signup.aspx" >Sign UP</asp:LinkButton>
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Academics_login.aspx" >Login</asp:LinkButton>
        </div>
        </div>
        
    </form>
</body>
</html>
