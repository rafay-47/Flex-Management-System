<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicsReports.aspx.cs" Inherits="AcademicsReports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

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
            <asp:ListItem Value="1">Offered Courses Report</asp:ListItem>
            <asp:ListItem Value="2">Student Section Report</asp:ListItem>
            <asp:ListItem Value="3">Course Allocation Report</asp:ListItem>
          
        </asp:DropDownList>
        </div>
        <asp:MultiView ID="MultiView1" runat="server">
      <asp:View ID="View1" runat="server">


         <div align="center">
        
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="685px" Width="1080px" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                <LocalReport ReportPath="OfferedCourses.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSet1TableAdapters.CoursesTableAdapter"></asp:ObjectDataSource>
        </div>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <div align="center">

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Student Section Report"  Font-Size="X-Large" GridLines="Both">  
            
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Section Name" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Student ID" ItemStyle-HorizontalAlign="Center">  
                      
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("StudentID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Student Name" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Username") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                
                          

                         </Columns>
                        
                     </asp:GridView>
                    </div>

            </asp:View>


            <asp:View ID="View3" runat="server">
                <div align="center">

                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="Black" BorderWidth="2px"   
            CellPadding="4" ForeColor="Black" Width="70%" Caption="Course Allocation Report"  Font-Size="X-Large">  
            
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>
                             
                     <asp:TemplateField HeaderText="Course Code" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseCode") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 


                             <asp:TemplateField HeaderText="Course Name" ItemStyle-HorizontalAlign="Center">  
                      
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Credit Hours" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CreditHours") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Section Name" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Instructor" ItemStyle-HorizontalAlign="Center">  
                   
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Username") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                
                          

                         </Columns>
                        
                     </asp:GridView>
                    </div>

            </asp:View>

            </asp:MultiView>

    </form>
</body>
</html>
