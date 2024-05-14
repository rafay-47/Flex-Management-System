<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyMenu.aspx.cs" Inherits="FacultyMenu" %>

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
        Faculty Portel</div>
        </div>

            <div style="font-size: 25px; font-weight: bold; position:absolute; right:30px; 
         font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
           
           
        </div>
        </div>
        

       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" 
           style="margin-top:50px;background-color:#4b87b6;padding: 8px;border: 1px solid #ccc; border-radius: 5px; color: #333; font-family: Arial, sans-serif; " Font-Size="X-Large" Height="49px" Width="254px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
           <asp:ListItem >Select Page</asp:ListItem>
            <asp:ListItem Value="1">Set Marks Distribution</asp:ListItem>
            <asp:ListItem Value="2">Mark Attendance</asp:ListItem>
           <asp:ListItem Value="3">Manage Evaluation</asp:ListItem>
           <asp:ListItem Value="4">Generate Grades</asp:ListItem>
           <asp:ListItem Value="5">Feedbacks</asp:ListItem>
           <asp:ListItem Value="6">Generate Reports</asp:ListItem>
           
        </asp:DropDownList>


        <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Set Marks Distribution
        </div>
        </div></div>


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Teaching Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Section" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="section" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Teacher" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="fname" runat="server" Text=""></asp:Label>
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
           
            Mark Attendance
        </div>
        </div></div>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView2_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Teaching Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link1" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Section" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="section" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Teacher" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="fname" runat="server" Text=""></asp:Label>
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
           
            Manage Evaluation
        </div>
        </div></div>



             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView3_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Teaching Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link1" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Section" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="section" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Teacher" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="fname" runat="server" Text=""></asp:Label>
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
           
            Generate Grades
        </div>
        </div></div>

                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView4_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Teaching Courses"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Code-Title" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                 <ItemTemplate>
                                     <asp:HyperLink ID="link1" runat="server" Text=''></asp:HyperLink>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Section" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="section" runat="server" Text='<%# Bind("SectionName") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Teacher" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="fname" runat="server" Text=""></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             

                             </Columns>
                </asp:GridView>

            </asp:View>

            <asp:View ID="View5" runat="server">

                 <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Feedbacks
        </div>
        </div></div>


                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView4_RowDataBound"
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Feedbacks From Students"  Font-Size="X-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
                         <Columns>

                             <asp:TemplateField HeaderText="Student Name" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="sname" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Comment" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="comment" runat="server" Text='<%# Bind("FeedbackFormData") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Rating" ItemStyle-HorizontalAlign="Center">
                                 <ItemTemplate>
                                     <asp:Label ID="rating" runat="server" Text='<%# Bind("rating") %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>

                             </Columns>
                    </asp:GridView>

            </asp:View>
            
            </asp:MultiView>
    </form>
</body>
</html>
