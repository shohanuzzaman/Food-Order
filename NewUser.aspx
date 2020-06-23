<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewUser.aspx.vb" Inherits="NewUser" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FF8080" Font-Bold="True"
        Font-Names="Comic Sans MS" ForeColor="White" Height="286px" Width="481px">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
        <InstructionTextStyle BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
            ForeColor="#FF8080" />
        <TitleTextStyle BackColor="White" ForeColor="#FF8080" />
        <ValidatorTextStyle Font-Bold="True" Font-Names="Comic Sans MS" />
        <HeaderStyle BackColor="White" />
        <CreateUserButtonStyle BackColor="#FF8080" BorderColor="White" BorderStyle="Double"
            Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="White" />
        <TextBoxStyle Font-Bold="True" Font-Names="Comic Sans MS" />
        <LabelStyle Font-Bold="True" Font-Names="Comic Sans MS" />
        <ErrorMessageStyle BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
            ForeColor="#FF8080" />
    </asp:CreateUserWizard>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

