<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PaymentDetail.aspx.vb" Inherits="PaymentDetail" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="5" style="border-right: #ffffff thick solid;
        border-top: #ffffff thick solid; border-left: #ffffff thick solid; border-bottom: #ffffff thick solid">
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    AutoGenerateSelectButton="True" BackColor="White" BorderColor="#ff8080" BorderStyle="Solid"
                    BorderWidth="2px" CellPadding="10" CellSpacing="10" Font-Bold="True" ForeColor="red">
                    <Columns>
                        <asp:BoundField DataField="cart_id" HeaderText="Cart Id" />
                        <asp:BoundField DataField="FoodId" HeaderText="Flower Id" />
                        <asp:BoundField DataField="FName" HeaderText="Flower Title" />
                        <asp:BoundField DataField="qua" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                    </Columns>
                    <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 193px; text-align: right; height: 37px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Text="Card No :"></asp:Label></td>
            <td style="width: 122px; text-align: left; height: 37px;">
                <asp:TextBox ID="txtCard" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" MaxLength="16" Width="204px"></asp:TextBox>
                <strong><span style="font-family: Comic Sans MS">(16 digit Code)</span></strong></td>
        </tr>
        <tr>
            <td style="width: 193px; text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Text="Card Holder Name :"></asp:Label></td>
            <td style="width: 122px; text-align: left">
                <asp:TextBox ID="txtcardhname" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Width="205px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 193px; text-align: right">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Text="Card Type :"></asp:Label></td>
            <td style="width: 122px; text-align: left">
                <asp:DropDownList ID="cmbCardType" runat="server" Width="152px" Font-Bold="True" Font-Names="Comic Sans MS">
                    <asp:ListItem>VISA</asp:ListItem>
                    <asp:ListItem>MASTER</asp:ListItem>
                    <asp:ListItem>RELIANCE</asp:ListItem>
                    <asp:ListItem>ICICI</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 193px; text-align: right">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Text="Expiry Date :"></asp:Label></td>
            <td style="width: 122px; text-align: left">
                <asp:TextBox ID="txtExpiryDate" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Width="145px"></asp:TextBox>
                <strong><span style="font-family: Comic Sans MS">(mm/dd/yyyy)</span></strong></td>
        </tr>
        <tr>
            <td style="width: 193px; text-align: right">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Text="Amount :"></asp:Label></td>
            <td style="width: 122px; text-align: left">
                <asp:TextBox ID="txtAmt" runat="server" Enabled="False" Font-Bold="True" Font-Names="Comic Sans MS" Width="146px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnPay" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="#FF6666" Text="Pay" Width="80px" />
                <asp:Button ID="btnCancel" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="#FF6666" Text="Cancel" /></td>
        </tr>
    </table>
</asp:Content>

