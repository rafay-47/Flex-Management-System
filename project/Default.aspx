<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .ChkBoxClass input {width:20px; height:20px;}

    </style>
    
</head>
<body >
    <form id="form1" runat="server" >
    
         <div  style=" display: flex; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding: 50px 50px 50px 50px";>

        <div style="font-size: 50px; font-weight: bold; color: #CC3300; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: 'Comic Sans MS';">
        Teachers Assessment Form</div>
       

        <p>
            &nbsp;</p>
        <hr style="border: 1px solid red; width: 100%; margin: auto;"/>
        <p>
            &nbsp;</p>

        <p style="font-size: large; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">
            <asp:Label ID="Label1" runat="server" ForeColor="#990000" Text="Date" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" ForeColor="#990000" Height="24px" style=" border-radius:7px">Date</asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" BackColor="Black" ImageUrl="~/cal.png" style="margin-top: 0px" Width="29px" OnClick="ImageButton1_Click" Height="23px" />
        </p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FF9966" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True"></asp:Calendar>
        
        
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" ForeColor="#990000" Text="Teacher Name" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large"></asp:Label>
        </p>
            <p>
                <asp:TextBox ID="fname" runat="server" style=" border-radius:7px" ForeColor="#990000" Width="142px" Height="24px">First Name</asp:TextBox>
                <asp:TextBox ID="lname" runat="server" ForeColor="#990000" Width="144px" style=" border-radius:7px" Height="24px">Last Name</asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
       
            <p>
                &nbsp;</p>

            <p>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" Text="Subject" Width="357px"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" Text="Schedule" s></asp:Label>
        </p>
            <p>
                <asp:TextBox ID="TextBox4" runat="server" Width="182px" Height="24px" style=" border-radius:7px"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" style="margin-left:170px; border-radius:7px" Width="194px" Height="24px"></asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
            <p>
                

                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" Text="Room Number"  Width="357px"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" Text="School Year"></asp:Label>
        </p>
        <p>
                <asp:TextBox ID="TextBox6" runat="server" style="margin-right:170px; border-radius:7px" Width="184px" Height="24px" ></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" Width="191px" Height="24px" style="margin-top: 0px; border-radius:7px"></asp:TextBox>
        </p>
        <p>
                &nbsp;</p>
        <p>

            <hr style="border: 1px solid red; width: 100%; margin: auto;"/>

                 <p>
                     &nbsp;</p>
            <p>

                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" 
                    Text="Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button."></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="For reference, the metric are as follows:"></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label9" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:30px" Text="1 - Poor"></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label10" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:30px" Text="2 - Below Average"></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label11" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:30px" Text="3 - Average"></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label12" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:30px" Text="4 - Good"></asp:Label>
        </p>
        <p>
                <asp:Label ID="Label13" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:30px" Text="5 - Excellent"></asp:Label>
        </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="Appearance and Personal Presentation (*)"></asp:Label>
        </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label15" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:600px" Text="1---2---3---4---5"></asp:Label>
        </p>
        <p>
       
            <asp:Label ID="Label16" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher attends class in a well presentable manner" style="margin-right:210px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist1" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist1_SelectedIndexChanged" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label17" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows enthusiasm when teaching in class" style="margin-right:225px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist2" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist2_SelectedIndexChanged" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label18" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows initiative and flexibility in teaching" style="margin-right:215px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist3" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist3_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label19" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher is well articulated and shows full knowledge of the subject in teaching" style="margin-right:5px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist4" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist4_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label20" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher speaks loud and clear enough to be heard by the whole class" style="margin-right:81px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist5" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist5_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>

        <p>
                &nbsp;</p>


         <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="Professional Practices (*)"></asp:Label>
        </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label22" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:600px" Text="1---2---3---4---5"></asp:Label>
        </p>
        <p>
       
            <asp:Label ID="Label23" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows professionalism in class" style="margin-right:310px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist6" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist6_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label24" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows commitment to teaching the class" style="margin-right:235px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist7" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist7_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label25" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher encourages students to engage in class discussions and ask questions" style="margin-right:23px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist8" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist8_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label26" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher handles criticisms and suggestions professionally" style="margin-right:170px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist9" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist9_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label27" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher comes to class on time" style="margin-right:367px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist10" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist10_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>

         <p>
       
            <asp:Label ID="Label28" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher ends class on time" style="margin-right:400px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist11" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist11_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
                &nbsp;</p>


         <p>
                &nbsp;</p>

        <p>
                <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="Teaching Methods (*)"></asp:Label>
        </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label30" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:600px" Text="1---2---3---4---5"></asp:Label>
        </p>
        <p>
       
            <asp:Label ID="Label31" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows well rounded knowledge over the subject matter" style="margin-right:120px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist12" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist12_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label32" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher has organized the lesson conducive for easy understanding of students" style="margin-right:3px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist13" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist13_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label33" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows dynamism and enthusiasm" style="margin-right:293px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist14" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist14_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label34" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher stimulates the critical thinking of students" style="margin-right:210px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist15" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist15_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label35" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher handles the class environment conducive for learning" style="margin-right:140px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist16" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist16_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>

        <p>
                &nbsp;</p>


         <p>
                &nbsp;</p>

        <p>
                <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="Disposition Towards Students (*)"></asp:Label>
        </p>
        <p>
                &nbsp;</p>
        <p>
                <asp:Label ID="Label37" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                     style="margin-left:600px" Text="1---2---3---4---5"></asp:Label>
        </p>
        <p>
       
            <asp:Label ID="Label38" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher believes that students can learn from the class" style="margin-right:175px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist17" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist17_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label39" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher shows equal respect to various cultural backgrounds,<br/> individuals, religion, and race" style="margin-right:380px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist18" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass" runat="server" OnSelectedIndexChanged="checkboxlist18_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label40" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher finds the students strengths as basis for growth and <br/> weaknesses for opportunities for improvement" style="margin-right:247px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist19" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist19_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>
        <p>
       
            <asp:Label ID="Label41" runat="server" Font-Names="Comic Sans MS" ForeColor="#990000"
                    Text="Teacher understands the weakness of a student and helps in <br/> the student's improvement" style="margin-right:393px"></asp:Label>
            <asp:CheckBoxList id="checkboxlist20" AutoPostBack="True" CellPadding="5" CellSpacing="5" RepeatColumns="5"
                    RepeatLayout="Flow" TextAlign="Right" CssClass="ChkBoxClass"  runat="server" OnSelectedIndexChanged="checkboxlist20_SelectedIndexChanged1" >
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:CheckBoxList >
                
        </p>

        <p>
                &nbsp;</p>
            <hr style="border: 1px solid red; width: 100%; margin: auto;"/>

            <p>
                &nbsp;</p>
        <p>
            <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000"
                    Text="Comments"></asp:Label>
        </p>
        <textarea id="comments" name="comments" cols="80" rows="10"  style="resize:both; overflow:auto; border-radius:10px " ></textarea>
        <br />
        <asp:Button ID="Button1" runat="server" style=" display: flex; align-items: center; justify-content: center; visibility: visible; margin:auto; margin-top:30px;" Text="Submit" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#990000" Height="41px" Width="79px" OnClick="Button1_Click" />
        </div>
             
             </div>
    </form>
</body>
</html>

