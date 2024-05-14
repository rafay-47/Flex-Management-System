<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allocate_course.aspx.cs" Inherits="allocate_course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            
            <div  style=" display: flex; margin-top:100px;  visibility: visible; margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    border-radius:25px;padding: 50px 50px 50px 50px; background-color: #4189ff;";>

        <div style="font-size: 40px; font-weight: bold; margin:auto;
         font-family: Georgia; ">
         Allocate Courses
           
           
        </div>
        </div>
            
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Available Courses"  Font-Size="X-Large">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" />
                         <Columns>



                             </Columns>
            </asp:GridView>



    </form>
</body>
</html>
