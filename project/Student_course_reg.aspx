<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_course_reg.aspx.cs" Inherits="Student_course_reg" %>

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
         font-family: Georgia; width: 336px;">
         Register Course
           
           
        </div>
        <div style="font-size: 25px; font-weight: bold; position:absolute; right:30px; 
         font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
           
           
        </div>

        </></div>

            <div  style="  margin-top:100px; margin-bottom:100px; align-items: center; justify-content: center; 
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); font-size:30px; ">

      


             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Offered Courses"  >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle Backcolor="#0066ff" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Courseid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Course Code" ItemStyle-HorizontalAlign="Center">  
                      
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CourseCode") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Course Name" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                
                             <asp:TemplateField HeaderText="Credit Hours" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CreditHours") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             

                    <asp:TemplateField  HeaderText="Register Course" FooterStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                       
                       <ItemTemplate>
                          <asp:CheckBox  ID="checkbox1" runat="server"  />
                       </ItemTemplate>    
                             </asp:TemplateField>
                         </Columns>
                     </asp:GridView>
          
        </div>

            <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; ">

            <asp:Button ID="Button1" runat="server" Text="Register Course" Width="184px" Font-Bold="True" 
                ForeColor="Black" Height="46px" style="border-radius:10px" OnClick="Button1_Click"/>
                <asp:Label ID="regerror" runat="server" Font-Underline="True" ForeColor="#FF3300"></asp:Label>
            </div>
        

        <div  style="  margin-top:100px; margin-bottom:100px; align-items: center; justify-content: center; 
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); font-size:30px; ">

             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Registered Courses"  >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle Backcolor="#0066ff" />

                  <Columns>
                             
                     <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="cid" runat="server" Text='<%# Bind("Courseid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Course Code" ItemStyle-HorizontalAlign="Center">  
                      
                    <ItemTemplate>  
                        <asp:Label ID="ccode" runat="server" Text='<%# Bind("CourseCode") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Course Name" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="cname" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                
                             <asp:TemplateField HeaderText="Credit Hours" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="chours" runat="server" Text='<%# Bind("CreditHours") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                            
                         </Columns>

                 </asp:GridView>

            </div>



        
    </form>
</body>
</html>
