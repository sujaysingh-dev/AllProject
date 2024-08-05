<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ACCOUNT.aspx.cs" Inherits="ACCOUNT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account/in</title>
    <style type="text/css">
        body {
            padding: 2% 25% 2% 25%;
        }
        .auto-style1 {
            width: 100%;
            height: 564px;
        }
        
        .auto-style2 {
            width: 30%;
        }
        
        .auto-style3 {
            width: 30%;
            height: 36px;
        }
        .auto-style4 {
            height: 36px;
            width: 4px;
        }
        
        .auto-style5 {
            height: 55px;
        }
        .auto-style7 {
            width: 4px;
        }
        
        .auto-style8 {
            height: 68px;
        }
        
        .auto-style9 {
            width: 30%;
            height: 32px;
        }
        .auto-style10 {
            height: 32px;
            width: 4px;
        }
        
        .auto-style11 {
            width: 30%;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
            width: 4px;
        }
        
    </style>
</head>
<body style="height: 528px; width: 50%;" >
             
    <form id="form1" runat="server" style="box-shadow:2px 4px 6px black;">
             
    <table border="0" class="auto-style1">
        <th colspan="2" class="auto-style8">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#666699" Text="Account"></asp:Label>
        </th>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="17pt" Text="Account Date"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="17pt" Text="Student ID"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Student_ID" DataValueField="Student_ID" Height="38px" Width="76px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class ID"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Cls_ID" DataValueField="Cls_ID" Height="38px" Width="75px">
                    <asp:ListItem>Class ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="17pt" Text="Exam Type"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="17pt" Text="Fee Type"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="17pt" Text="Category"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox7" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="17pt" Text="Amount"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox8" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="17pt" Text="Slip No"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox9" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        
        <th colspan="2" class="auto-style5">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="New" Width="85px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Save" Width="85px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Update" Width="85px" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Delete" Width="85px" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="All Search" Width="85px" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="P Search" Width="85px" OnClick="Button6_Click" />
        </th>
    </table>
             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 0px" Width="635px">
            <Columns>
                <asp:BoundField DataField="A_Date" HeaderText="A_Date" SortExpression="A_Date" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                <asp:BoundField DataField="Cls_ID" HeaderText="Cls_ID" SortExpression="Cls_ID" />
                <asp:BoundField DataField="Cls_Name" HeaderText="Cls_Name" SortExpression="Cls_Name" />
                <asp:BoundField DataField="Exam_Type" HeaderText="Exam_Type" SortExpression="Exam_Type" />
                <asp:BoundField DataField="Fee_Type" HeaderText="Fee_Type" SortExpression="Fee_Type" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Amt" HeaderText="Amt" SortExpression="Amt" />
                <asp:BoundField DataField="Slip_No" HeaderText="Slip_No" SortExpression="Slip_No" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ACCOUNT]"></asp:SqlDataSource>
             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [STUDENT_ADMISSION]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Cls_ID] FROM [CLASS_REGISTRATION]"></asp:SqlDataSource>
        <br />
             
    </form>
             
</body>
</html>
