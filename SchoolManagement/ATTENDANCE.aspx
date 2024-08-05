<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ATTENDANCE.aspx.cs" Inherits="ATTENDANCE" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        body {
            padding: 2% 25% 2% 25%;
        }
        .auto-style1 {
            width: 100%;
        }
        
        .auto-style2 {
            width: 30%;
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
        width: 4px;
        height: 32px;
    }
        
    </style>
</head>
<body style="height: 528px; width: 50%;" >
             
    <form id="form1" runat="server" style="box-shadow:2px 4px 6px black;">
             
    <table border="0" class="auto-style1">
        <th colspan="2" class="auto-style8">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#666699" Text="Attendence"></asp:Label>
        </th>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="17pt" Text="Student ID"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Student_ID" DataValueField="Student_ID" Height="37px"  Width="75px">
                    <asp:ListItem>Select ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class ID"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Cls_ID" DataValueField="Cls_ID" Height="36px"  Width="75px">
                    <asp:ListItem>Class ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Cls_Name" DataValueField="Cls_Name" Height="36px"  Width="76px">
                    <asp:ListItem>Class ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Type"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="17pt" Text="Month"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="17pt" Text="Holiday"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="17pt" Text="Present"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox7" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="17pt" Text="Absent"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox8" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
                
        <th colspan="2" class="auto-style5">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="New" Width="85px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Save" Width="85px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Update" Width="85px" OnClick="Button3_Click1" />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Delete" Width="85px" OnClick="Button4_Click1" />
            <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="All Search" Width="85px" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="P Search" Width="85px" OnClick="Button6_Click" />
        </th>
    </table>
             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-right: 151px" Width="617px">
            <Columns>
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                <asp:BoundField DataField="Cls_ID" HeaderText="Cls_ID" SortExpression="Cls_ID" />
                <asp:BoundField DataField="Cls_Name" HeaderText="Cls_Name" SortExpression="Cls_Name" />
                <asp:BoundField DataField="Cls_Typ" HeaderText="Cls_Typ" SortExpression="Cls_Typ" />
                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                <asp:BoundField DataField="Holiday" HeaderText="Holiday" SortExpression="Holiday" />
                <asp:BoundField DataField="Present" HeaderText="Present" SortExpression="Present" />
                <asp:BoundField DataField="Absent" HeaderText="Absent" SortExpression="Absent" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ATTENDANCE]"></asp:SqlDataSource>
             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [STUDENT_ADMISSION]"></asp:SqlDataSource>
             
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CLASS_REGISTRATION]"></asp:SqlDataSource>
             
    </form>
             
</body>
</html>
