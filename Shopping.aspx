<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Charlie's Perch</h1>
    </div>
        <asp:Panel ID="Panel6" runat="server" BackColor="#CC0000" Height="19px" style="margin-top: 0px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#202020" Height="324px" Width="153px">
                <asp:Image ID="Image4" runat="server" Height="120px" ImageUrl="~/Images/charlie_head_logo.png" style="margin-left: 4px" Width="146px" />
                <asp:Button ID="homeButton" runat="server" Text="Home" Height="40px" OnClick="homeButton_Click" Width="124px" style="margin-left: 13px; margin-top: 21px" />
                <asp:Button ID="menuButton" runat="server" Height="40px" OnClick="menuButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Menu" Width="124px" />
                <asp:Button ID="cartButton" runat="server" Height="40px" OnClick="cartButton_Click" style="margin-left: 13px; margin-top: 24px" Text="Shop" Width="124px" />
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
        
        <center>
            <asp:Label ID="shop" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Shop"></asp:Label>
            <br/>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="welcome" runat="server" Font-Bold="False" Font-Size="Large" Text="Here you can add items to your shopping cart."></asp:Label>
            <br/>
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="Name" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-left: 18px; margin-top: 0px; margin-right: 0px;">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    <br />
                    <table border="1" class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Name: "></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Price: "></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("Image") %>' width ="120" Height="90"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Description: "></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Quantity: "></asp:Label>
                                <asp:DropDownList ID="QuantityDDL" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>

            <br />
            <br />
            <asp:Button ID="order" runat="server" Height="36px" OnClick="order_Click" style="margin-left: 0px" Text="Order" Width="100px" Font-Size="Medium" />

        </center>
        
    </form>
</body>
</html>
