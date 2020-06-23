<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="headertext">
        <table border="10" cellpadding="10" cellspacing="10" bordercolor="white">
            <tr>
                <td colspan="3" style="height: 58px">
                    <marquee bgcolor="white"><FONT color=#FF8080 size=4><STRONG>Welcome to the Web site of Online Flowers shopping system</STRONG></FONT></marquee>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="224px" ImageUrl="~/Image/D101[1].jpg"
                        Width="350px" /></td>
                <td style="width: 131px">
                    <font color="#FF8080" size="4">To Register<br>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/registration.aspx">Click Here</asp:HyperLink>
                    </font>
                </td>
            </tr>
           <tr>
            <td style="width: 100px" align="center" colspan="3">
                &nbsp;<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        AutoGenerateSelectButton="True" BackColor="White" BorderColor="#FF8080" BorderStyle="Solid"
        BorderWidth="2px" CellPadding="10" CellSpacing="10"
        Font-Bold="True" ForeColor="Red">
        <Columns>
            <asp:BoundField DataField="FoodId" HeaderText="Flower Id" />
            <asp:BoundField DataField="FName" HeaderText="Flower Title"/>
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:ImageField DataImageUrlField="imgFile" HeaderText="Flower Picture">
            </asp:ImageField>
        </Columns>
        <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
            </td>
        </tr>
         <tr>
             <td align="center" style="width: 100px" colspan="3">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                     Font-Size="Large" Text="Enter Quantity :" ForeColor="Black" Width="157px"></asp:Label>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
             <td align="center" style="width: 100px; height: 23px; text-align: center;" colspan="3">
                 <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
                     Font-Size="Large" ForeColor="#FF6666" Text="Add to Cart" /></td>
         </tr>
                        </table>
    </div>
</asp:Content>
