<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="_32667019_examProject.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1028px;
        }
        .auto-style2 {
            width: 100%;
            height: 665px;
        }
        .auto-style4 {
            height: 232px;
        }
        .auto-style5 {
            height: 232px;
            width: 203px;
        }
        .auto-style6 {
            width: 203px;
        }
        .auto-style9 {
            height: 232px;
            width: 238px;
        }
        .auto-style11 {
            width: 238px;
        }
        .auto-style12 {
            height: 340px;
            width: 203px;
        }
        .auto-style13 {
            height: 340px;
            width: 238px;
        }
        .auto-style14 {
            height: 340px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="background-color: #0066FF">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="228px" Width="300px" ImageUrl="~/logo.png" />
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="nameTextBox" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Surname" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="surnameTextBox" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="passwordTextBox" runat="server" Height="22px" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Contact Number" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="contactNoTextBox" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Email Address" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="emailAddressTextBox" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Allegies" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="allegiesTExtBox" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Emergencies Contact" ForeColor="White"></asp:Label>
                    <br />
                    <asp:TextBox ID="emergenciesContactTextBox" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="errorLbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="signUpBtn" runat="server" OnClick="signUpBtn_Click" Text="SIGN UP" Width="276px" />
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
