<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyReports.aspx.cs" Inherits="FacultyReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
           Generate Reports
           
           
        </div>
        </div></div>

        <div>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" 
           style="margin-top:50px;background-color:#4b87b6;padding: 8px;border: 1px solid #ccc; border-radius: 5px; color: #333; font-family: Arial, sans-serif; " Font-Size="X-Large" Height="49px" Width="254px" >
           <asp:ListItem >Select Page</asp:ListItem>
            <asp:ListItem Value="1">Attendance Sheet Report</asp:ListItem>
            <asp:ListItem Value="2">Evaluation Report</asp:ListItem>
            <asp:ListItem Value="3">Grade Report</asp:ListItem>
            <asp:ListItem Value="4">Grade Count Report</asp:ListItem>
            <asp:ListItem Value="5">Feedbacks Report</asp:ListItem>
          
        </asp:DropDownList>

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">

            <div align="center">

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Attendance Sheet Report"  Font-Size="X-Large" GridLines="Both">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center">
                         <ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>

                         </ItemTemplate
                             ></asp:TemplateField> 


                             <asp:TemplateField HeaderText="Attendance %" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("AP") %>'></asp:Label>

                                 </ItemTemplate>

                             </asp:TemplateField> 

                         </Columns>
                        
                     </asp:GridView>
                </div>


                </asp:View>


                 <asp:View ID="View2" runat="server">

            <div align="center">

                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Student Marks Report"  Font-Size="X-Large" GridLines="Both">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Bind("studentid") %>'></asp:Label></ItemTemplate></asp:TemplateField> 


                             <asp:TemplateField HeaderText="Evaluation Type" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("EvaluationType") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Obtained Marks" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("marks") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

               

                         </Columns>
                        
                     </asp:GridView>
                </div>


                </asp:View>


                 <asp:View ID="View3" runat="server">

                     <div align="center">
                         <asp:Label ID="Label2" runat="server" Text="Enter Course Name" Font-Size="X-Large"></asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="34px" Width="410px"></asp:TextBox>
                         <br />
                         <br />
                         <asp:Button ID="Button1" runat="server" BackColor="#1D5946" ForeColor="White" Height="32px" OnClick="Button1_Click" Text="Generate" Width="79px" />
                         <br />
                         <br />
                         <br />
                     </div>

            <div align="center">

                 <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Grade Report"  Font-Size="X-Large" GridLines="Both">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Bind("userid") %>'></asp:Label></ItemTemplate></asp:TemplateField> 


                             <asp:TemplateField HeaderText="Student Name" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("username") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Section" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Total Marks" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("total_marks") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Grade" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("grade") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

               

                         </Columns>
                        
                     </asp:GridView>
                </div>


                </asp:View>

                 <asp:View ID="View4" runat="server">

                     <div align="center">
                         <asp:Label ID="Label3" runat="server" Text="Enter Section ID" Font-Size="X-Large"></asp:Label>
                         <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="34px" Width="410px"></asp:TextBox>
                         <br />
                         <br />
                         <asp:Button ID="Button2" runat="server" BackColor="#1D5946" ForeColor="White" Height="32px" OnClick="Button2_Click" Text="Generate" Width="79px" />
                         <br />
                         <br />
                         <br />
                     </div>

            <div align="center">

                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Grade Report"  Font-Size="X-Large" GridLines="Both">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                  
                             <asp:TemplateField HeaderText="Grade" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("grade") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Grade Count" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("GradesCount") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                           

                         </Columns>
                        
                     </asp:GridView>
                </div>


                </asp:View>

                 <asp:View ID="View5" runat="server">

                    
                    
            <div align="center">

                 <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Feedback Report"  Font-Size="X-Large" GridLines="Both">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                  
                             <asp:TemplateField HeaderText="NO#" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("FeedbackID") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                             <asp:TemplateField HeaderText="Feedback" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("FeedbackFormData") %>'></asp:Label></ItemTemplate></asp:TemplateField> 
                             <asp:TemplateField HeaderText="Rating" ItemStyle-HorizontalAlign="Center"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("rating") %>'></asp:Label></ItemTemplate></asp:TemplateField> 

                           

                         </Columns>
                        
                     </asp:GridView>
                </div>


                </asp:View>




            </asp:MultiView>



            </div>
    </form>
</body>
</html>
