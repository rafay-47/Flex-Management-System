<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageEvaluation.aspx.cs" Inherits="ManageEvaluation" %>

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
           
          Manage Evaluation
           
           
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
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Evaluation sheet"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Student Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     
                                     <asp:Label ID="sname" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>

                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Assignment" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:TextBox ID="assign" runat="server" Width="100px" Height="40px" Font-Size="Large"></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             
                             <asp:TemplateField HeaderText="Final Exam" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:TextBox ID="final" runat="server" Width="100px" Height="40px" Font-Size="Large"></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Quizzes" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:TextBox ID="quiz" runat="server" Width="100px" Height="40px" Font-Size="Large"></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Sessional-I" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:TextBox ID="ses1" runat="server" Width="100px" Height="40px" Font-Size="Large"></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Sessional-II" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:TextBox ID="ses2" runat="server" Width="100px" Height="40px" Font-Size="Large"></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             
                             </Columns>
                </asp:GridView>

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
