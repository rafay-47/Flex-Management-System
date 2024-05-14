<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarksDistribution.aspx.cs" Inherits="MarksDistribution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .save1{
            background-color:#3b984c;
        }
        .save1:hover{
            background-color:#56ca64;
        
        }
    </style>

    <script>
        function handleChange(input) {
            if (input.value < 0) input.value = 0;
            if (input.value > 100) input.value = 100;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div  style=" display: flex; margin:auto; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:25px;padding: 50px 50px 50px 50px; background-color:#1d4564; color:white  ">

        <div style="font-size: 30px; font-weight: bold; display: flex; 
        align-items: center; justify-content: center; margin:auto; font-family: Georgia;">
           
           Set Marks Distribution
           
           
        </div>
        </div></div>

        
         <div  style=" display: flex; align-items: center; justify-content: center; visibility: visible;">
    <div style="margin:auto; margin-top:50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding: 50px 50px 50px 50px";>

        <div>
             <asp:Label ID="course" runat="server" Font-Size="XX-Large" Font-Bold="True" ForeColor="#006600"></asp:Label>
        </div>
        <div style="margin-top:100px;">
            <hr style="border: 1px solid black; width: 100%; margin: auto;"/>
        <asp:Table ID="Table1" runat="server" CellPadding="15" CellSpacing="15">
            <asp:TableHeaderRow>
                <asp:TableCell> 
                    <asp:Label ID="ename" runat="server" Text="Evaluation Name" Font-Size="X-Large" style="margin-right:80px;" Font-Bold="True"></asp:Label>
                </asp:TableCell>
                <asp:TableCell> 
                    <asp:Label ID="weightage" runat="server" Text="Weightage" Font-Size="X-Large" style="margin-right:80px;" Font-Bold="True"></asp:Label>
                </asp:TableCell>
                <asp:TableCell> 
                    <asp:Label ID="range" runat="server" Text="Range" Font-Size="X-Large" style="margin-right:80px;" Font-Bold="True"></asp:Label>
                </asp:TableCell>
            </asp:TableHeaderRow>
            
            <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="assignment" runat="server" Text="Assignment" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="assignment_text" runat="server" Height="40px" Width="120px" style="margin-right:80px;" type="number" onchange="handleChange(this);"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="range1" runat="server" Text="Range: 0 to 100" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="final" runat="server" Text="Final Exam" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="final_text" runat="server" Height="40px" Width="120px" style="margin-right:80px;" type="number" onchange="handleChange(this);"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="range2" runat="server" Text="Range: 0 to 100" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="quiz" runat="server" Text="Quiz" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="quiz_text" runat="server" Height="40px" Width="120px" style="margin-right:80px;" type="number" onchange="handleChange(this);"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="range3" runat="server" Text="Range: 0 to 100" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="sessional1" runat="server" Text="Sessional-I" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="ses_1_text" runat="server" Height="40px" Width="120px" style="margin-right:80px;" type="number" onchange="handleChange(this);"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="range4" runat="server" Text="Range: 0 to 100" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow >
                <asp:TableCell>
                    <asp:Label ID="sessional2" runat="server" Text="    Sessional-II" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="ses_2_text" runat="server" Height="40px" Width="120px" style="margin-right:80px;" type="number" onchange="handleChange(this);"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="range5" runat="server" Text="Range: 0 to 100" Font-Size="X-Large" style="margin-right:80px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <hr style="border: 1px solid black; width: 100%; margin: auto;"/>

            <div style="display:flex; align-items: center; justify-content: center;">
                <div style="display:inline; margin-right:100px">
                <asp:Button ID="save" CssClass="save1" runat="server" Text="Save" Height="40px" Width="100px" style="margin-top:30px; margin-left:90px" Font-Size="Larger" OnClick="save_Click" />
                    </div>
                <div style="display:inline; margin-top:30px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/reset.png" Width="40" Height="40" OnClick="ImageButton1_Click" />
                    </div>
              
            </div>
            <div>
                 <asp:Label ID="total_error" runat="server" Text="" ForeColor="#CC3300" Font-Underline="True"></asp:Label>
            </div>
           
            </div>
        </div>
             </div>

       
    </form>
</body>
</html>
