<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
        Style="position: static">
        <Columns>
            <asp:BoundField DataField="FoodId" HeaderText="Flower Id" />
            <asp:BoundField DataField="FName" HeaderText="Image Description" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:ImageField DataImageUrlField="imgFile" HeaderText="Flower Image">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>

