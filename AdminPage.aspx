﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 id="companyName" runat="server">Charlie's Perch</h1>
        Welcome Admin!
    </div>
        <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="328px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
                <asp:Button ID="assignButton" runat="server" Height="40px" OnClick="assignButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Assign Staff to Orders" Width="124px" />
                <br />
                <br />
                <br />
                Locations:<br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="0">Charlies Perch</asp:ListItem>
                    <asp:ListItem Value="1">Coders Corner</asp:ListItem>
                    <asp:ListItem Value="2">Movie Mutts Pizza Hut</asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>
        </asp:Panel>
        <br/>
        <asp:Panel ID="Panel7" runat="server" Height="666px" style="margin-left: 202px; margin-right: 122px;" Width="761px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="#FFCC00" Text="Todays Favorite:"></asp:Label>
            <br />
            <asp:Panel ID="Panel8" runat="server" BackColor="#FFCC00" Height="16px" Width="882px">
            </asp:Panel>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="50px" ForeColor="#FFCC00" Text="The Chuck Special"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Size="50px" ForeColor="#FFCC00" Text="$9.00"></asp:Label>
            <asp:Image ID="Image2" runat="server" Height="345px" ImageUrl="~/Images/burger_and_fries.jpg" Width="604px" style="margin-left: 141px; margin-top: 19px" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" style="margin-left: 375px; margin-top: 0px" Text="View Now" Width="172px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
            <br />
            <asp:Panel ID="Panel9" runat="server" BackColor="#FFCC00" Height="16px" Width="882px">
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
