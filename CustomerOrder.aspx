<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerOrder.aspx.cs" Inherits="CustomerOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Order</title>
    <style>
        .hello
        {
            margin-left: 240px;
            font-size: larger;
        }
        #orders {
            margin-left: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <h1 id ="companyName" runat="server">Charlie's Perch</h1>
    </div>
        <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="324px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
                <asp:Button ID="cartButton" runat="server" Height="40px" OnClick="cartButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Shop" Width="124px" />
                <br />
            </asp:Panel>
        </asp:Panel>
        <br />
        <br />
        <div class ="hello">
            <asp:Label ID="hello" runat="server" Font-Size="Larger" Text="Hello! Here is your order:"></asp:Label>
        </div>
        <div id="orders" runat="server">

            <br />

        </div>
        <br />
    </form>
</body>
</html>
