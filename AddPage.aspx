<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPage.aspx.cs" Inherits="AddPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meats</title>
    <style type="text/css">
        #form1 {
            height: 690px;
            width: 966px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Charlie's Perch</h1>
    </div>
    <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px">
    <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="170px" Width="153px">
        <asp:Button ID="homeButton" runat="server" Text="Home" Height="42px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 20px" />
        <asp:Button ID="menuButton" runat="server" Height="42px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 32px" Text="Menu" Width="124px" />
        <br />
        <br />
    </asp:Panel>
    </asp:Panel>
        <br/><br/>
        <center>
        
        <br/>
            <asp:ListBox ID="ListBox1" runat="server" Height="289px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" style="margin-left: 0px" Width="558px" SelectionMode="Multiple"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Please enter the Name, Price, and Description of the item below."></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="item" runat="server" Height="138px" style="margin-left: 0px" TextMode="MultiLine" Width="274px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="add_Item" runat="server" style="margin-left: 0px" Text="Add" Width="79px" OnClick="add_Item_Click" />
&nbsp;
            <asp:Button ID="remove_Item" runat="server" Text="Remove" Width="77px" OnClick="remove_Item_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br/>
        </center>
    </form>
</body>
</html>