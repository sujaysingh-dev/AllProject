<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mymenu.aspx.cs" Inherits="Mymenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        * {
            margin: 0px;
        }
        form {
            padding: 15% 40% 0% 40%;
        }
    </style>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Student Registration" Value="Student Registration">
                    <asp:MenuItem NavigateUrl="~/STUDENT_REGISTRATION.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem Text="Report" Value="Report" NavigateUrl="~/ReportStudentRegistration.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Subject Registration" Value="Subject Registration">
                    <asp:MenuItem NavigateUrl="~/SUBJECT_REGISTRATION.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportSubjectRegistration.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Teacher Information" Value="Teacher Information">
                    <asp:MenuItem NavigateUrl="~/TEACHER_INFORMATION.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportTeacherInformation.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Class Registration" Value="Class Registration">
                    <asp:MenuItem NavigateUrl="~/CLASS_REGISTRATION.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportClassRegistration.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Marks Destribution" Value="Marks Destribution">
                    <asp:MenuItem NavigateUrl="~/MARKS_DESTRIBUTION.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportMarkdistribution.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Attendance" Value="Attendance">
                    <asp:MenuItem NavigateUrl="~/ATTENDANCE.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportAttendance.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ACCOUNT.aspx" Text="Account" Value="Account">
                    <asp:MenuItem NavigateUrl="~/ACCOUNT.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportAccount.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Grade" Value="Grade">
                    <asp:MenuItem NavigateUrl="~/GRADE.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportGrade.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticItemTemplate>
                <%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>
    
    </form>
</body>
</html>
