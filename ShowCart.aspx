<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ShowCart.aspx.vb" Inherits="ShowCart" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span style="font-size: 24pt; color: #000000">Click on Select Button to Update
        an Item Quantity<br />
    </span></strong>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        AutoGenerateSelectButton="True" BackColor="White" BorderColor="#ff8080" BorderStyle="Solid"
        BorderWidth="2px" CellPadding="10" CellSpacing="10" Font-Bold="True" ForeColor="red">
        <Columns>
            <asp:BoundField DataField="cart_id" HeaderText="Cart Id" />
            <asp:BoundField DataField="FoodId" HeaderText="Flower Id" />
            <asp:BoundField DataField="FName" HeaderText="Flower Title" />
            <asp:BoundField DataField="qua" HeaderText="Quantity" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:ImageField DataImageUrlField="imgFile" HeaderText="Flower Picture">
            </asp:ImageField>
        </Columns>
        <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Large" Text="Enter Quantity :"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <strong><span style="font-family: Comic Sans MS">(0 for Delete item from Cart)</span></strong><br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Large" ForeColor="#FF6666" Text="Add to Cart" /><br />
</asp:Content>

