<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
   
    <asp:Login ID="Login1" runat="server" BackColor="White" BorderColor="#FF8080"
        BorderPadding="4" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Medium" ForeColor="#FF8080" Height="194px">
        <TitleTextStyle BackColor="#FF8080" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="#FF8080" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"
            Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" />
    </asp:Login>
</asp:Content>

