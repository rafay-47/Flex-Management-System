<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateGrades.aspx.cs" Inherits="GenerateGrades" %>

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
          
            Generate Grades
           
           
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
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Generate Grades"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Total Marks" ItemStyle-HorizontalAlign="Center">  
                      
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Marks") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Grade" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("grade") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                        </Columns>
            </asp:GridView>


        <div style="display:flex; align-items: center; justify-content: center;">
                <div style="display:inline; margin-right:100px">
                <asp:Button ID="save" CssClass="save1" runat="server" Text="Save" Height="40px" Width="100px" style="margin-top:30px; margin-left:90px" Font-Size="Larger" OnClick="save_Click" />
                    </div></div>

        </div></div>


    </form>
</body>
</html>
