<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="brightonMedical.aspx.cs" Inherits="_32667019_examProject.brightonMediccal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 613px;
        }
        .auto-style2 {
            width: 100%;
            height: 613px;
            margin-bottom: 22px;
        }
        .auto-style3 {
            height: 228px;
        }
        .auto-style4 {
            height: 156px;
        }
        .auto-style6 {
            height: 156px;
            width: 387px;
        }
        .auto-style7 {
            height: 228px;
            width: 387px;
        }
        .auto-style9 {
            height: 156px;
            width: 167px;
        }
        .auto-style10 {
            height: 228px;
            width: 167px;
        }
        .auto-style11 {
            width: 387px;
        }
        .auto-style12 {
            width: 167px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #0066FF">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image1" runat="server" Height="260px" ImageUrl="~/logo.png" Width="390px" />
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
                        <br />
                        <asp:TextBox ID="emailTextBox" runat="server" Width="274px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter an Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        <br />
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Width="274px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="loginBtn" runat="server" OnClick="loginBtn_Click" style="height: 26px" Text="LOGIN" Width="280px" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="errorLbl" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label3" runat="server" Text="SIGN UP TO CREATE A NEW ACCOUNT"></asp:Label>
                        <br />
                        <asp:Button ID="signUpBtn" runat="server" Height="24px" OnClick="signUpBtn_Click" Text="SIGN UP" Width="278px" />
                        <br />
                    </td>
                    <td class="auto-style12"></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
