<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentMenu.aspx.cs" Inherits="StudentMenu" %>

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
        Student Portel</div>
        </div>

            <div style="font-size: 25px; font-weight: bold; position:absolute; right:30px; 
         font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
           
           
        </div>
        </div>

        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" 
           style="margin-top:50px;background-color:#4b87b6;padding: 8px;border: 1px solid #ccc; border-radius: 5px; color: #333; font-family: Arial, sans-serif; " Font-Size="X-Large" Height="49px" Width="254px" >
           <asp:ListItem >Select Page</asp:ListItem>
            <asp:ListItem Value="1">Register Course</asp:ListItem>
            <asp:ListItem Value="2">Attendance</asp:ListItem>
            <asp:ListItem Value="3">Marks</asp:ListItem>
            <asp:ListItem Value="4">Transcript</asp:ListItem>
            <asp:ListItem Value="5">Give Feedback</asp:ListItem>
        </asp:DropDownList>

        
        
        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="registercourse" runat="server">


                <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Register Course
           
           
        </div>
        </div></div>

            <div style="  margin-top:100px; margin-bottom:100px; 
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
                <br />
                <asp:Label ID="info" runat="server" Text="*Cannot register courses on red feild (Prerequisite of those courses is not passed)" Font-Size="Large" ForeColor="#CC3300" Font-Underline="True"></asp:Label>
        </div>

            <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; ">

            <asp:Button ID="Button1" runat="server" Text="Register Course" Width="184px" Font-Bold="True" 
                ForeColor="Black" Height="46px" style="border-radius:10px" OnClick="Button3_Click"/>
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


            </asp:View>

            <asp:View ID="View1" runat="server">


                <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Attendance
           
           
        </div>
        </div></div>

                   <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView3_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="20%" Caption="Registered Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link1" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             

                             </Columns>
                </asp:GridView>


            </asp:View>

            <asp:View ID="View2" runat="server">

                <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Marks
           
           
        </div>
        </div></div>

                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView4_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="20%" Caption="Registered Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link1" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             

                             </Columns>
                </asp:GridView>

            </asp:View>

            <asp:View ID="View3" runat="server">
                

            </asp:View>


        </asp:MultiView>


    </form>
</body>
</html>
