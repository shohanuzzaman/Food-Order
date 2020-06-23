<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FastFood.aspx.vb" Inherits="Birthday" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="5" cellpadding="5" cellspacing="5" style="border-right: #ffffff thick solid;
        border-top: #ffffff thick solid; vertical-align: middle; border-left: #ffffff thick solid;
        border-bottom: #ffffff thick solid; text-align: center">
        <tr>
            <td>
                <strong>
                    <marquee behavior="alternate" bgcolor="white" style="font-size: 30pt; vertical-align: middle;
                        width: 801px; height: 54px"><SPAN style="FONT-SIZE: 16pt; COLOR: red">Click Select to Add to Shopping Cart</SPAN></marquee>
                </strong>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px">
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    AutoGenerateSelectButton="True" BackColor="White" BorderColor="#ff8080" BorderStyle="Solid"
                    BorderWidth="2px" CellPadding="10" CellSpacing="10" Font-Bold="True" ForeColor="red">
                    <Columns>
                        <asp:BoundField DataField="FoodId" HeaderText="Flower Id" />
                        <asp:BoundField DataField="FName" HeaderText="Flower Title" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:ImageField DataImageUrlField="imgFile" HeaderText="Flower Picture">
                        </asp:ImageField>
                    </Columns>
                    <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Large" Text="Enter Quantity :"></asp:Label><asp:TextBox ID="TextBox1"
                        runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px">
                &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF6666" Text="Add to Cart" /></td>
        </tr>
    </table>
</asp:Content>

