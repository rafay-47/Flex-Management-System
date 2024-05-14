<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuditTrails.aspx.cs" Inherits="AuditTrails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  style=" display:flex ; align-items: center; justify-content: center; visibility: visible; background-color: #4b87b6; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
    <div style="margin:auto;  border-radius:25px;padding: 50px 50px 50px 50px; ">

        <div style=" font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
        Audit Trails</div>
        </div>

            <div style="font-size: 25px; font-weight: bold; position:absolute; right:30px; 
         font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
           
           
        </div>
        </div>
        
      
        

       

       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" 
           style="margin-top:50px;background-color:#4b87b6;padding: 8px;border: 1px solid #ccc; border-radius: 5px; color: #333; font-family: Arial, sans-serif; " Font-Size="X-Large" Height="49px" Width="254px" >
           <asp:ListItem >Select Page</asp:ListItem>
            <asp:ListItem Value="1">Login Audit Trail</asp:ListItem>
            <asp:ListItem Value="2">Register Course Audit Trail</asp:ListItem>
            <asp:ListItem Value="3">Attendance Audit Trail</asp:ListItem>
            <asp:ListItem Value="4">Marks Evaluation Audit Trail</asp:ListItem>
            
        </asp:DropDownList>

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">

                  <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Login Audit Trail
           
           
        </div>
        </div></div>
]

      
                

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Login Audit Trails"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Audit ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Audit_ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="User Role" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Role") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="User ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="Register Time" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Timestamp") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                             </Columns>
                 </asp:GridView>

            </asp:View>



            <asp:View ID="View2" runat="server">

                  <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Register Courses Audit Trail
           
           
        </div>
        </div></div>
]

      
                

             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Register Courses Audit Trails"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Audit ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Audit_ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudentID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="Login Time" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Timestamp") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                             </Columns>
                 </asp:GridView>

            </asp:View>

            <asp:View ID="View3" runat="server">

                  <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Attendance Audit Trail
           
           
        </div>
        </div></div>
]

      
                

             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Attendance Audit Trails"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Faculty ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("facultyid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Section ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sectionid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OfferedCourseID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 




                             </Columns>
                 </asp:GridView>
                </asp:View>



            <asp:View ID="View4" runat="server">

                  <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Evaluation Audit Trail
           
           
        </div>
        </div></div>
]

      
                

             <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Attendance Audit Trails"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Audit ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Audit_ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Section ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SectionID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Evaluation Type" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("EvaluationType") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                              <asp:TemplateField HeaderText="Save Time" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Timestamp") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>


                             </Columns>
                 </asp:GridView>
                </asp:View>




        </asp:MultiView>

    </form>
</body>
</html>
