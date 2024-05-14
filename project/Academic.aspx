<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Academic.aspx.cs" Inherits="Academic" %>

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
        Academic Portel</div>
        </div>

            <div style="font-size: 25px; font-weight: bold; position:absolute; right:30px; 
         font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
           
           
        </div>
        </div>
        
      
        

       

       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" 
           style="margin-top:50px;background-color:#4b87b6;padding: 8px;border: 1px solid #ccc; border-radius: 5px; color: #333; font-family: Arial, sans-serif; " Font-Size="X-Large" Height="49px" Width="254px" >
           <asp:ListItem >Select Page</asp:ListItem>
            <asp:ListItem Value="1">Add New Course</asp:ListItem>
            <asp:ListItem Value="2">Offer Course</asp:ListItem>
            <asp:ListItem Value="3">Allocate Course</asp:ListItem>
            <asp:ListItem Value="4">Make Sections</asp:ListItem>
           <asp:ListItem Value="5">Generate Reports</asp:ListItem>
           <asp:ListItem Value="6">See Audit Trails</asp:ListItem>
        </asp:DropDownList>
        
       
        
       
        

         <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div>

            
            <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Add Course
           
           
        </div>
        </div></div>
            

            <div  style=" display: flex; margin-top:100px;  align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#336afd; color: #FFFFFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
            <asp:Label ID="Label1" runat="server" Text="Enter Course Code" Width="400px"></asp:Label>
            <asp:TextBox ID="courseid" runat="server" Height="30px" Width="275px"></asp:TextBox>
           
           
        </div>
        </div></div>

            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#336afd; color: #FFFFFF;">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

        <asp:Label ID="Label4" runat="server" Text="Enter Course Name" Width="400px"></asp:Label>
            <asp:TextBox ID="coursename" runat="server" Height="29px" Width="276px"></asp:TextBox></div>
        </div></div>

             <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#336afd; color: #FFFFFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

         <asp:Label ID="Label3" runat="server" Text="Enter Credit Hours" Width="400px"></asp:Label>
            <asp:TextBox ID="credithours" runat="server" Height="28px" Width="277px"></asp:TextBox>
            </div></div>
        </div>

            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#336afd; color: #FFFFFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

         <asp:Label ID="Label2" runat="server" Text="Enter Prerequisite <br/> Course ID" Width="400px"></asp:Label>
            <asp:TextBox ID="prereq" runat="server" Height="28px" Width="277px"></asp:TextBox>
            <br />
            <asp:Label ID="prereperror" runat="server" Text="" Font-Underline="True"></asp:Label> </div></div>
        </div>


            <div  style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#336afd; color: #FFFFFF;";>

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">

            <asp:Button ID="Button3" runat="server" Text="Enter Course" Width="184px" Font-Bold="True" Font-Names="Comic Sans MS" 
                ForeColor="Black" Height="46px" style="border-radius:10px" OnClick="Button3_Click"/>
            </div></div>
        </div>

            </div>
            </asp:View>
            <asp:View ID="View2" runat="server">


                <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Offer Course
           
           
        </div>
        </div></div>
]

      
                

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Available Courses"  Font-Size="X-Large" GridLines="None">  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
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

            <asp:DropDownList ID="DropDownList1" runat="server" Height="43px" Width="115px"></asp:DropDownList>
        </div></div>
       </div>
        
    

      <div style=" display: flex; margin-top:100px; align-items: center; justify-content: center; visibility: visible;">
          <asp:Button ID="Button2" runat="server" Text="Offer Courses" Height="40px" Width="146px" OnClick="Button4_Click1" />


        </div>

            </asp:View>

            <asp:View ID="View3" runat="server">

                 <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Allocate Instructor
           
           
        </div>
        </div></div>



                <div  style="  display:inline-flex; margin-left:35%; margin-top:3%; align-items: center; justify-content: center; visibility: visible;">
    

        
           
           <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" 
           style="margin-top:50px;padding: 8px;border: 1px solid #ccc;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
           border-radius: 5px; color: #333; font-family: Arial, sans-serif; font-size: 24px;" Height="60px" Width="300px" BackColor="#278df9" ForeColor="White" >
               
                <asp:ListItem>See Courses</asp:ListItem>

        </asp:DropDownList>

        </div>

    <div  style=" display: inline-flex; margin-left:10%; margin-top:3%; align-items: center; justify-content: center; visibility: visible;">
   
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" 
           style="margin-top:50px;padding: 8px;border: 1px solid #ccc; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
            border-radius: 5px; color: #333; font-family: Arial, sans-serif; font-size: 24px;" Height="59px" Width="300px" BackColor="#278df9" ForeColor="White">
           <asp:ListItem>See Teachers</asp:ListItem>

        </asp:DropDownList>
            </div>
        

                <div style=" display: flex; margin-top:400px; align-items: center; justify-content: center; visibility: visible;">
          <asp:Button ID="allocate" runat="server" Text="Allocate Course" Height="66px" Width="213px" BackColor="#278df9" OnClick="allocate_Click" Font-Size="X-Large" />


        </div>

                </asp:View>
             <asp:View ID="View4" runat="server">

                 <div  style=" display: flex; margin:auto; margin-bottom:50px; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
            Make Sections
           
           
        </div>
        </div></div>
                 
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px"   
            CellPadding="4" ForeColor="Black" Width="100%" Caption="Available Courses"  Font-Size="XX-Large" GridLines="None" >  
            <AlternatingRowStyle BackColor="#d7edfd" />  
                 <HeaderStyle BackColor="#0066ff" ForeColor="White" />
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

                              <asp:TemplateField HeaderText="Registered Students" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Label ID="reg" runat="server" Text=""></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 

                             <asp:TemplateField HeaderText="Make Section" ItemStyle-HorizontalAlign="Center">  
                    
                    <ItemTemplate>  
                        <asp:Button ID="section" runat="server" Text="Make Section" ForeColor="White" Height="40px" Width="120px" OnClick="make_section" />
                    </ItemTemplate>  
                </asp:TemplateField> 
                          
                             </Columns>
                   
                    </asp:GridView>

                 </asp:View>
             

        </asp:MultiView>
        
    </form>
</body>
</html>
