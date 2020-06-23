<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Sitemap.aspx.vb" Inherits="Sitemap" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" Font-Names="Courier New"
        Font-Size="Large" ForeColor="red" Width="464px">
        <Nodes>
            <asp:TreeNode NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Registration.aspx" Text="Register" Value="Register"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Login.aspx" Text="Login" Value="Login"></asp:TreeNode>
            <asp:TreeNode Text="Category" Value="Category">
                <asp:TreeNode Text="Occassions" Value="Occassions">
                    <asp:TreeNode NavigateUrl="~/Anniversory.aspx" Text="Anniversory" Value="Anniversory">
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Birthday.aspx" Text="BirthDay" Value="BirthDay"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Congratulations.aspx" Text="Congratulations" Value="Congratulations">
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Flowers" Value="Flowers">
                    <asp:TreeNode NavigateUrl="~/All_Flowers.aspx" Text="All Flowers" Value="All Flowers">
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Roses.aspx" Text="Roses" Value="Roses"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Plants" Value="Plants">
                    <asp:TreeNode NavigateUrl="~/All_Plants.aspx" Text="All Plants" Value="All Plants"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/RosePlants.aspx" Text="Rose Plants" Value="Rose Plants">
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Gift Basket &amp; Food" Value="Gift Basket &amp; Food">
                    <asp:TreeNode NavigateUrl="~/NewBabyBasket.aspx" Text="New Baby Basket" Value="New Baby Basket">
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Specials" Value="Specials">
                    <asp:TreeNode NavigateUrl="~/Flower_Values.aspx" Text="Flower values" Value="Flower values">
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Same - Day" Value="Same - Day">
                    <asp:TreeNode NavigateUrl="~/GiftBasketNFood.aspx" Text="Gift Baskets" Value="Gift Baskets">
                    </asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/About Us.aspx" Text="About Us" Value="About Us"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/ContactUs.aspx" Text="Contact Us" Value="Contact Us"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
</asp:Content>

