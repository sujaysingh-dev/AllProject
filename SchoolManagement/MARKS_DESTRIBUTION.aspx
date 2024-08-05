<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MARKS_DESTRIBUTION.aspx.cs" Inherits="MARKS_DESTRIBUTION" %>

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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#666699" Text="Marks Destrubution"></asp:Label>
        </th>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="17pt" Text="Marks Date"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="17pt" Text="Teacher ID"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="T_ID" DataValueField="T_ID" Height="37px" Width="75px" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="17pt" Text="Student ID"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Student_ID" DataValueField="Student_ID" Height="38px"  Width="75px">
                    <asp:ListItem>Select ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class ID"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Cls_ID" DataValueField="Cls_ID" Height="38px"  Width="75px">
                    <asp:ListItem>Class ID</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Cls_Name" DataValueField="Cls_Name" Height="39px" Width="75px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="17pt" Text="Exam Type"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="17pt" Text="Subject Code"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox7" runat="server" Height="33px" Width="78%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Sub_Code" DataValueField="Sub_Code" Height="37px" Width="76px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="17pt" Text="Class Test"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox8" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="17pt" Text="Marks ID"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox9" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="17pt" Text="Theory"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox10" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="17pt" Text="Objective"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox11" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="17pt" Text="Practical"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox12" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
            <tr>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="17pt" Text="Total Mark"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox13" runat="server" Height="33px" Width="98%" Font-Bold="True" Font-Size="15pt" ForeColor="#666666"></asp:TextBox>
            </td>
        </tr>
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
             
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="M_Date" HeaderText="M_Date" SortExpression="M_Date" />
                <asp:BoundField DataField="T_ID" HeaderText="T_ID" SortExpression="T_ID" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                <asp:BoundField DataField="Cls_ID" HeaderText="Cls_ID" SortExpression="Cls_ID" />
                <asp:BoundField DataField="Cls_Name" HeaderText="Cls_Name" SortExpression="Cls_Name" />
                <asp:BoundField DataField="Exam_Type" HeaderText="Exam_Type" SortExpression="Exam_Type" />
                <asp:BoundField DataField="Sub_Code" HeaderText="Sub_Code" SortExpression="Sub_Code" />
                <asp:BoundField DataField="Class_Test" HeaderText="Class_Test" SortExpression="Class_Test" />
                <asp:BoundField DataField="Mid" HeaderText="Mid" SortExpression="Mid" />
                <asp:BoundField DataField="Theory" HeaderText="Theory" SortExpression="Theory" />
                <asp:BoundField DataField="Obj" HeaderText="Obj" SortExpression="Obj" />
                <asp:BoundField DataField="Practical" HeaderText="Practical" SortExpression="Practical" />
                <asp:BoundField DataField="Total_Mark" HeaderText="Total_Mark" SortExpression="Total_Mark" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MARKS_DESTRIBUTION]"></asp:SqlDataSource>
             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TEACHER_INFORMATION]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [STUDENT_ADMISSION]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CLASS_REGISTRATION]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SUBJECT_REGISTRATION]"></asp:SqlDataSource>
             
    </form>
             
</body>
</html>
