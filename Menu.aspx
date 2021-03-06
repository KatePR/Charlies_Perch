﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <style type ="text/css">
        #wrap {
            width: 600px;
        }
        .left {
            margin-left: 200px;
            width: 375px;
            height: 181px;
            float: left;
        }
        .right {
            margin-left: 200px;
            width: 240px;
            height: 123px;
            float: right;
        }
        .label {
            margin-left: 300px;
        }
    </style>
</head>
<body style="height: 640px">
    <form id="form1" runat="server">
    
        <h1 id="companyName" runat="server">Charlie's Perch</h1>

        <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="270px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
                <br />
                <br />
                <br />
                <br />
                <br />
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
        <br/><br/><br/><br/>
        <div class="label">
            <asp:Label ID="Label3" runat="server" Text="Welcome to Charlies Flavor Town!" Font-Bold="True" Font-Size="Larger"></asp:Label>
        </div>
        <br/><br/>
        <div id="wrap">
            <div class="left">
                <asp:Panel ID="Panel1" runat="server" Height="215px" Width="153px" style="margin-top: 1px">
                    <asp:Label ID="Label1" runat="server" Text="Vegetarian"></asp:Label>
                    <br/>
                    <asp:Image ID="Image2" runat="server" Height="104px" style="margin-left: 10px; margin-top: 0px" Width="133px" ImageUrl="~/Images/rice-noodle-salad-cambodia.jpg" />
                    <br/><br/>
                    <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click1" style="margin-left: 23px; margin-top: 7px" Text="View" Width="109px" />
                    <br/>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Height="215px" Width="153px" style="margin-top: 1px;">
                <asp:Label ID="Label2" runat="server" Text="Meats"></asp:Label>
                <br/>
                <asp:Image ID="Image1" runat="server" Height="104px" style="margin-left: 10px; margin-top: 0px" Width="133px" ImageUrl="~/Images/burger-hamburger-with-cheese-500x366.jpg" />
                <br/><br/>
                <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click2" style="margin-left: 23px; margin-top: 7px" Text="View" Width="109px" />
                <br/>
                </asp:Panel>
            </div>
            </div>
    </form>
</body>
</html>
