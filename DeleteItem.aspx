<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteItem.aspx.cs" Inherits="DeleteItem" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meats</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
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
        <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
        
       
        &nbsp;</center>
    </form>
</body>
</html>