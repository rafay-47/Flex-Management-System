<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
            <div  style=" display: inline; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
           
            Add Course
           
           
        </div>
        </div></div>
            

            <div  style=" display: flex; margin-top:100px;  align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
            <asp:Label ID="Label1" runat="server" Text="Enter Course Code" Width="400px"></asp:Label>
            <asp:TextBox ID="courseid" runat="server" Height="30px" Width="275px"></asp:TextBox>
           
           
        </div>
        </div></div>

            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

        <asp:Label ID="Label4" runat="server" Text="Enter Course Name" Width="400px"></asp:Label>
            <asp:TextBox ID="coursename" runat="server" Height="29px" Width="276px"></asp:TextBox></div>
        </div></div>

             <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

         <asp:Label ID="Label3" runat="server" Text="Enter Credit Hours" Width="400px"></asp:Label>
            <asp:TextBox ID="credithours" runat="server" Height="28px" Width="277px"></asp:TextBox>
            </div></div>
        </div>

            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

         <asp:Label ID="Label2" runat="server" Text="Enter Prerequisite <br/> Course ID" Width="400px"></asp:Label>
            <asp:TextBox ID="prereq" runat="server" Height="28px" Width="277px"></asp:TextBox>
            <br />
            <asp:Label ID="prereperror" runat="server" Text="" Font-Underline="True"></asp:Label> </div></div>
        </div>


            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

            <asp:Button ID="Button1" runat="server" Text="Enter Course" Width="184px" Font-Bold="True" Font-Names="Comic Sans MS" 
                ForeColor="Black" Height="46px" style="border-radius:10px" OnClick="Button1_Click"/>
            </div></div>
        </div>

            </div>
    </form>
</body>
</html>
