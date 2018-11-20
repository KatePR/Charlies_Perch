<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Meats.aspx.cs" Inherits="Meats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meats</title>
    <!-- the link down below is for getting the information from a stylesheet in another folder. -->
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
    <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px" Width="1226px">
    <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="270px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
            </asp:Panel>
    </asp:Panel>
        <br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Meats" Font-Size="Larger" style="margin-left: 200px;"></asp:Label>
        <asp:Panel ID="Panel7" runat="server" BorderStyle="Ridge" Height="188px" style="margin-left: 295px; margin-top: 68px" Width="518px">
            <asp:Label ID="Label1" runat="server" Text="The Chuck Special" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="$9.00"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="152px" ImageUrl="~/Images/burger_and_fries.jpg" style="margin-left: 11px" Width="235px" />
   <asp:TextBox ID="TextBox1" runat="server" Height="145px" style="margin-top: 0px" Width="259px" TextMode="MultiLine" ReadOnly="true">Made using ground beef(80% lean,
20% fat). Toppings include red onion, tomato, lettuce, and swiss cheese. Comes with a side of 
homemade potato chips.
    
*Those with food allergies should be aware that the chips are fried in peanut oil. We recommend
asking for a different side.</asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server" BorderStyle="Ridge" Height="188px" style="margin-left: 294px; margin-top: 12px" Width="518px">
            <asp:Label ID="Label5" runat="server" Text="Chicken Fingers" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="$6.50"></asp:Label>
            <br />
            <asp:Image ID="Image3" runat="server" Height="152px" ImageUrl="~/Images/tendies.jpg" style="margin-left: 14px" Width="235px" />
            <asp:TextBox ID="TextBox2" runat="server" Height="145px" ReadOnly="True" TextMode="MultiLine" Width="248px">Breaded and fried chicken tenders with a side of our seasoned fries. We 
also have many different dipping sauces to choose from!

*Those with food allergies should know that the chicken tenders
are not gluten free due to the breading used.
</asp:TextBox>
        </asp:Panel>
        
        <br/>
        <br />
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="*Consuming raw or undercooked meats, poultry, seafood, 
            shellfish, or eggs may increase your risk of foodborne illness." ForeColor="#CC0000"></asp:Label>
    </form>
</body>
</html>
