<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffVeggieMenu.aspx.cs" Inherits="StaffVeggieMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vegetarian</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Charlie's Perch</h1>
        <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="16px" style="margin-top: 0px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="270px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
            </asp:Panel>
        </asp:Panel>
    </div>
        <br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Vegetarian" Font-Size="Larger" style="margin-left: 200px;"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Here, you can edit the text and pictures."></asp:Label>
        <asp:Panel ID="Panel7" runat="server" BorderStyle="Ridge" Height="188px" style="margin-left: 295px; margin-top: 68px" Width="518px">
            <asp:Label ID="Label1" runat="server" Text="Rice Noodles" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="$5.50"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="152px" ImageUrl="~/Images/rice-noodle-salad-cambodia.jpg" style="margin-left: 11px" Width="235px" />
   <asp:TextBox ID="TextBox1" runat="server" Height="145px" style="margin-top: 0px" Width="259px" TextMode="MultiLine">This dish includes rice noodles with lime, carrot, and red 
cabbage slices, topped off with black sesame seeds and peanuts.
    
*Those with food allergies should be aware that this dish was made using peanut oil and there are 
peanuts that top it.</asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server" BorderStyle="Ridge" Height="188px" style="margin-left: 294px; margin-top: 12px" Width="518px">
            <asp:Label ID="Label3" runat="server" Text="Veggie Pizza"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="$8.00"></asp:Label>
            <br />
            <asp:Image ID="Image3" runat="server" Height="152px" ImageUrl="~/Images/pizza.jpg" style="margin-left: 14px" Width="235px" />
            <asp:TextBox ID="TextBox2" runat="server" Height="145px" TextMode="MultiLine" Width="248px">This dish includes tomato sauce and mozzarela cheese, topped 
with broccoli, tomato slices, and red onion rings.

*Those with food allergies should know that the doe of this pizza
is NOT gluten-free.</asp:TextBox>
        </asp:Panel>
    </form>

</body>
</html>
