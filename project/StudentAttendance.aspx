<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentAttendance.aspx.cs" Inherits="StudentAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
          Attendance
           
           
        </div>
        </div></div>



         <div  style=" display: flex; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding: 50px 50px 50px 50px";>

        <div style="margin-bottom:100px;">
             <asp:Label ID="course" runat="server" Font-Size="XX-Large" Font-Bold="True" ForeColor="#006600"></asp:Label>
            <hr style="border: 1px solid black; width: 100%; margin: auto;"/>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Attendance sheet"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Date" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     
                                     <asp:Label ID="date" runat="server" Text='<%# Bind("Date") %>'></asp:Label>

                                 </ItemTemplate>
                             </asp:TemplateField>

                              <asp:TemplateField HeaderText="Status" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     
                                     <asp:Label ID="status" runat="server" Text='<%# Bind("Status") %>'></asp:Label>

                                 </ItemTemplate>
                             </asp:TemplateField>

                             
                             </Columns>
                </asp:GridView>


        </div></div>
    </form>
</body>
</html>
