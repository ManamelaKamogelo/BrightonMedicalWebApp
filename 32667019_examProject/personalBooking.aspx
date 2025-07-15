<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalBooking.aspx.cs" Inherits="_32667019_examProject.personalBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1288px;
            width: 1237px;
        }
        .auto-style22 {
            width: 108px;
            height: 88px;
        }
        .auto-style23 {
            margin-top: 0px;
        }
        .auto-style11 {
            width: 95%;
            height: 1080px;
        }
        .auto-style12 {
            width: 836px;
            height: 349px;
        }
        .auto-style15 {
            height: 349px;
            width: 445px;
        }
        .auto-style14 {
            height: 349px;
        }
        .auto-style8 {
            width: 836px;
            height: 421px;
        }
        .auto-style16 {
            height: 421px;
            width: 445px;
        }
        .auto-style10 {
            height: 421px;
        }
        .auto-style3 {
            width: 836px;
        }
        .auto-style17 {
            width: 445px;
        }
        .auto-style21 {
            width: 72px;
            height: 66px;
        }
        .auto-style19 {
            width: 65px;
            height: 58px;
        }
        .auto-style18 {
            width: 65px;
            height: 59px;
        }
    </style>
</head>
<body style="height: 1282px; width: 1237px; margin-right: 34px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #FFFFFF">
            <asp:Panel ID="Panel6" runat="server" BackColor="#0066FF" BorderStyle="Solid" Height="125px" HorizontalAlign="Right" Width="1229px" ForeColor="White" CssClass="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="userInforLbl" runat="server" ForeColor="White"></asp:Label>
                &nbsp;
                <img alt="" class="auto-style22" longdesc="https://localhost:44326/profilePic.png" src="profilePic.png" dir="rtl" />
                <br />
                <asp:Button ID="logOutBtn" runat="server" OnClick="logOutBtn_Click" Text="Log Out" Width="200px" />
            </asp:Panel>
            <table class="auto-style11" style="background-color: #0066FF">
                <tr>
                    <td class="auto-style12">
                        <asp:Panel ID="Panel7" runat="server" BackColor="#0066FF" BorderStyle="Solid" Height="600px" Width="450px" ForeColor="White">
                            <img alt="" class="auto-style21" longdesc="https://localhost:44326/profilePic.png" src="profilePic.png" />
                            &nbsp;Update Details<br />
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Name"></asp:Label>
                            <br />
                            <asp:TextBox ID="nameTextBox" runat="server" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Surname"></asp:Label>
                            <br />
                            <asp:TextBox ID="surnameTextBox" runat="server" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Password"></asp:Label>
                            <br />
                            <asp:TextBox ID="passwordTextBox" runat="server" Height="22px" TextMode="Password" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Contact Number"></asp:Label>
                            <br />
                            <asp:TextBox ID="contactNoTextBox" runat="server" TextMode="Phone" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Email Address"></asp:Label>
                            <br />
                            <asp:TextBox ID="emailAddressTextBox" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Allergies"></asp:Label>
                            <br />
                            <asp:TextBox ID="allegiesTExtBox" runat="server" Width="250px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Emergencies Contact"></asp:Label>
                            <br />
                            <asp:TextBox ID="emergenciesContactTextBox" runat="server" TextMode="Phone" Width="250px"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                            <asp:Button ID="updateBtn" runat="server" BorderStyle="None" OnClick="updateBtn_Click" Text="Update Details" Width="268px" />
                            <br />
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
                            <asp:Label ID="errorLbl" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="messageLbl" runat="server"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:Panel>
                    </td>
                    <td class="auto-style15">
                        <asp:Panel ID="Panel8" runat="server" BackColor="#0066FF" BorderStyle="Solid" Direction="LeftToRight" ForeColor="White" Height="600px" Width="450px">
                            <img alt="" class="auto-style19" longdesc="https://localhost:44326/booking.png" src="booking.png" />
                            &nbsp;MAKE AN APPOINTMENT<br />
                            <br />
                            <asp:RadioButtonList ID="appointmentRd" runat="server" ForeColor="White">
                                <asp:ListItem>Surgical Appointment</asp:ListItem>
                                <asp:ListItem>Laboratory/Medical Result Analysis</asp:ListItem>
                                <asp:ListItem>Routines Check-Up</asp:ListItem>
                                <asp:ListItem>Urgent Medical Check-Up</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            SELECT TIME BELOW<br />
                            <br />
                            <asp:DropDownList ID="timeDropList" runat="server" Height="16px" Width="253px">
                                <asp:ListItem>08:00</asp:ListItem>
                                <asp:ListItem>08:30</asp:ListItem>
                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>09:30</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>11:30</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:30</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>14:30</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>15:30</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            CHOOSE A DATE FOR APPOINTMENT<br />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                            <br />
                            <asp:CheckBox ID="ambulenceCb" runat="server" ForeColor="White" Text="Check I You Want Ambulence Service" />
                            <br />
                            <br />
                            <asp:Button ID="bookBtn" runat="server" OnClick="bookBtn_Click" Text="Book An Appointment" Width="258px" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style14">
                        <asp:Panel ID="Panel9" runat="server" BackColor="#0066FF" BorderStyle="Solid" CssClass="auto-style23" Height="600px" Width="300px" ForeColor="White">
                            <img alt="" class="auto-style18" longdesc="https://localhost:44326/cancelpic.png" src="cancelpic.png" />
                            &nbsp; Cancel Appointment<br />
                            <br />
                            <br />
                            <asp:Label ID="Label11" runat="server" ForeColor="White" Text="Appointment Number"></asp:Label>
                            <asp:TextBox ID="appointmentTxtBox" runat="server" Width="252px" TextMode="Date"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="cancelBtn" runat="server" OnClick="cancelBtn_Click" Text="Cancel Appointment" Width="258px" />
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image7" runat="server" Height="86px" Width="86px" ImageUrl="~/update.png" />
                            &nbsp; Update Appointment<br />
                            <br />
                            Time:<br />
                            <asp:TextBox ID="timeTextBox" runat="server" TextMode="Time" Width="200px"></asp:TextBox>
                            <br />
                            <br />
                            Date:<br />
                            <asp:TextBox ID="dateTextBox" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="updateAppointment" runat="server" OnClick="updateAppointment_Click" Text="Update Appointment" Width="200px" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Panel ID="Panel10" runat="server" BackColor="#0066FF" BorderStyle="Solid" Height="500px" Width="450px" ForeColor="White">
                            <asp:Image ID="Image5" runat="server" Height="86px" Width="86px" CssClass="auto-style23" ImageUrl="~/invoice.png" />
                            &nbsp; Request Invoice<br />
                            <br />
                            <br />
                            <asp:ListBox ID="invoiceListBox" runat="server" Height="300px" Width="450px"></asp:ListBox>
                            <br />
                            <br />
                            <asp:Button ID="requestBtn" runat="server" OnClick="requestBtn_Click" Text="Request" Width="450px" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                    <td class="auto-style16">
                        <asp:Panel ID="Panel11" runat="server" BorderStyle="Solid" Height="500px" Width="450px" ForeColor="White">
                            <asp:Image ID="Image6" runat="server" CssClass="auto-style23" Height="86px" Width="86px" ImageUrl="~/view.jpg" />
                            &nbsp; View Appointments<br />
                            <br />
                            <br />
                            <asp:ListBox ID="appointmentViewListBox" runat="server" Height="300px" Width="450px"></asp:ListBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="View Appointment" Width="450px" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
