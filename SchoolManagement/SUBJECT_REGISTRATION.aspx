<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SUBJECT_REGISTRATION.aspx.cs" Inherits="SUBJECT_REGISTRATION" %>

<!DOCTYPE html>

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
        
    </style>
</head>
<body style="height: 528px; width: 50%;" >
             
    <form id="form1" runat="server" style="box-shadow:2px 4px 6px black;">
             
    <table border="0" class="auto-style1">
        <th colspan="2" class="auto-style8">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#666699" Text="Subject Registration"></asp:Label>
        </th>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="17pt" Text="Subject Code"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="17pt" Text="Subject Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="17pt" Text="Subject Mark"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
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
             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Sub_Code" HeaderText="Sub_Code" SortExpression="Sub_Code" />
                <asp:BoundField DataField="Cls_Name" HeaderText="Cls_Name" SortExpression="Cls_Name" />
                <asp:BoundField DataField="Sub_Name" HeaderText="Sub_Name" SortExpression="Sub_Name" />
                <asp:BoundField DataField="Sub_Mark" HeaderText="Sub_Mark" SortExpression="Sub_Mark" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SUBJECT_REGISTRATION]"></asp:SqlDataSource>
             
    </form>
             
</body>
</html>

