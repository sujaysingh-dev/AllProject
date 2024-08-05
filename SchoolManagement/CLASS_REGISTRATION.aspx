﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CLASS_REGISTRATION.aspx.cs" Inherits="CLASS_REGISTRATION" %>

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
        width: 33%;
    }
        
        .auto-style3 {
            width: 33%;
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
        width: 33%;
        height: 31px;
    }
    .auto-style10 {
        width: 4px;
        height: 31px;
    }
        
    </style>
</head>
<body style="height: 528px; width: 50%;" >
             
    <form id="form1" runat="server" style="box-shadow:2px 4px 6px black;">
             
    <table border="0" class="auto-style1">
        <th colspan="2" class="auto-style8">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#666699" Text="Class Registration"></asp:Label>
        </th>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="17pt" Text="Year"></asp:Label>
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
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Student_ID" DataValueField="Student_ID" Height="36px"  Width="72px" >
                    <asp:ListItem>Select ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class ID"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
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
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="17pt" Text="Department Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="17pt" Text="Shift "></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
                
        <th colspan="2" class="auto-style5">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="New" Width="85px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Save" Width="85px" OnClick="Button2_Click1" />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Update" Width="85px" OnClick="Button3_Click1" />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="Delete" Width="85px" OnClick="Button4_Click1" />
            <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="All Search" Width="85px" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="11pt" Height="35px" Text="P Search" Width="85px" OnClick="Button6_Click" />
        </th>
    </table>
             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="544px">
            <Columns>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
                <asp:BoundField DataField="Cls_ID" HeaderText="Cls_ID" SortExpression="Cls_ID" />
                <asp:BoundField DataField="Cls_Name" HeaderText="Cls_Name" SortExpression="Cls_Name" />
                <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CLASS_REGISTRATION]"></asp:SqlDataSource>
             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [STUDENT_ADMISSION]"></asp:SqlDataSource>
             
    </form>
             
</body>
</html>