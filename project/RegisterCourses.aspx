<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCourses.aspx.cs" Inherits="RegisterCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      
        
    </style>
</head>
<body >
    <form id="form1" runat="server">
        

            <div  style=" display: inline; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #4189ff;";>

        <div style="font-size: 50px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           Offer Course
           
           
        </div>
        </div></div>
]

      


             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Available Courses"  Font-Size="X-Large">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Courseid") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Course ID" ItemStyle-HorizontalAlign="Center">  
                      
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

                             <asp:TemplateField HeaderText="Pre-Requisite" ItemStyle-HorizontalAlign="Center">  
               
                    <ItemTemplate>  
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PrerequisiteCourseID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>

                    <asp:TemplateField  HeaderText="Offer Course" FooterStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                       
                       <ItemTemplate>
                          <asp:CheckBox  ID="checkbox1" runat="server"  />
                       </ItemTemplate>
                                
                                
                             </asp:TemplateField>

                         </Columns>
                        
                     </asp:GridView>

          
            <br/>
           
           <br />
        
            
         <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color: #99CCFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

       <asp:Label ID="Label5" runat="server" Text="Student ID" Width="406px"></asp:Label>
            <asp:TextBox ID="studentid" runat="server" Height="44px" Width="212px" Style="font-size: 20px;" ></asp:TextBox>
        </div></div>
       </div>
        
    

      <div style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
       <asp:Button ID="Button1" runat="server" Text="Offer" Font-Size="X-Large" Height="45px" Width="175px" OnClick="Button1_Click1" />

        </div>

    </form>
</body>
</html>


