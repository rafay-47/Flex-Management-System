<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
    
    .custom-dropdown {
        background-color: #f0f0f0;
        color: #333;
        padding: 5px;
    }
</style>


</head>
<body>
    <form id="form1" runat="server">
        <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
          Mark Attendance
           
           
        </div>
        </div></div>



         <div  style=" display: flex; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding: 50px 50px 50px 50px";>

        <div>
             <asp:Label ID="course" runat="server" Font-Size="XX-Large" Font-Bold="True" ForeColor="#006600"></asp:Label>
        </div>

         <hr style="border: 1px solid black; width: 100%; margin: auto;"/>  

        <div style="margin-top:50px;margin-bottom:50px">
                <div style="display:inline;  margin-right:50px">
                    <asp:Label ID="Label1" runat="server" Text="Select Date" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </div>
            <div style="display:inline;  margin-right:50px">
                <asp:ImageButton ID="ImageButton1" runat="server" BackColor="Black" ImageUrl="~/cal.png" Width="29px" OnClick="ImageButton1_Click" Height="23px" />

                    </div>
                <div style="display:inline; margin-top:30px">
                     <asp:Calendar ID="Calendar1" runat="server" BackColor="#BBF4FB" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True"></asp:Calendar>
                    </div>
              <div style="display:inline; margin-top:30px">
                  <asp:Label ID="date" runat="server" Text=""></asp:Label>
                    </div>
            </div>
        
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption=""  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Student Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     
                                     <asp:Label ID="sname" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>

                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Attendance" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:DropDownList  ID="DropDownList1" runat="server" CssClass="custom-dropdown" >
                                         <asp:ListItem Text="Select"></asp:ListItem>
                                         <asp:ListItem Text="Present"></asp:ListItem>
                                         <asp:ListItem Text="Absent"></asp:ListItem>
                                     </asp:DropDownList>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             </Columns>
                </asp:GridView>
       
       <hr style="border: 1px solid black; width: 100%; margin: auto;"/>   
           
           

        <div style="display:flex; align-items: center; justify-content: center;">
                <div style="display:inline; margin-right:100px">
                <asp:Button ID="save" CssClass="save1" runat="server" Text="Save" Height="40px" Width="100px" style="margin-top:30px; margin-left:90px" Font-Size="Larger" OnClick="save_Click" BackColor="#339966"  />
                    </div>
               
              
            </div>
            
            </div>

        </div>
            

    </form>
</body>
</html>
