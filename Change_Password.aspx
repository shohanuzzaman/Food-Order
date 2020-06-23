<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Change_Password.aspx.vb" Inherits="Change_Password" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="White" BorderColor="#FF8080"
                BorderPadding="4" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="Comic Sans MS"
                Font-Size="Medium" Height="268px" Width="415px">
                <CancelButtonStyle BackColor="#FF8080" BorderStyle="Solid" BorderWidth="1px"
                    Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1" />
                <ChangePasswordButtonStyle BackColor="#FF8080" BorderStyle="Solid"
                    BorderWidth="1px" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium"
                    ForeColor="White" />
                <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TitleTextStyle BackColor="#FF8080" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                <TextBoxStyle Font-Size="0.8em" />
                <LabelStyle ForeColor="#FF8080" />
            </asp:ChangePassword>
        </asp:View>
    </asp:MultiView>
</asp:Content>

