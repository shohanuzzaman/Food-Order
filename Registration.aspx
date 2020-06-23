<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Registration.aspx.vb" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="10" cellspacing="10" cellpadding="10" bordercolor="#FF8080">
        <tr>
            <td colspan="2" align="right" style="vertical-align: middle; background-color: white;
                text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="X-Large" ForeColor="#FF8080" Text="Registration Form"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight: bold" colspan="2">
                <marquee behavior="alternate" bgcolor="#FF8080"><asp:Label style="FONT-WEIGHT: bold; VERTICAL-ALIGN: middle; COLOR: white; FONT-FAMILY: 'Comic Sans MS'; TEXT-ALIGN: center; FONT-VARIANT: small-caps" id="Label3" runat="server" Width="268px" Text="Welcome to Online Shopping. Register For Purchase Food. Thank You."></asp:Label></marquee>
            </td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="FN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="First Name :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="FNAME" runat="server" ForeColor="Black" Width="200px" Font-Bold="True"
                    Font-Names="Comic Sans MS" Font-Size="Medium" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FNAME"
                    ErrorMessage="First Name cannot be Empty" Font-Bold="True" Font-Italic="False"
                    Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False"
                    ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="LN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Last Name :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="LNAME" runat="server" ForeColor="Black" Width="200px" Font-Bold="True"
                    Font-Names="Comic Sans MS" Font-Size="Medium" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LNAME"
                    ErrorMessage="Last Name cannot be Empty" Font-Bold="True" Font-Italic="False"
                    Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False"
                    ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="MN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Middle Name :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="MNAME" runat="server" ForeColor="Black" Width="200px" Font-Bold="True"
                    Font-Names="Comic Sans MS" Font-Size="Medium" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MNAME"
                    ErrorMessage="Middle Name cannot be Empty" Font-Bold="True" Font-Italic="False"
                    Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False"
                    ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="background-color: white; height: 60px;" valign="top" align="right">
                <asp:Label ID="ADD" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Address :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px; height: 60px;" align="left">
                <asp:TextBox ID="ADDRESS" runat="server" ForeColor="Black" Rows="3" TextMode="MultiLine"
                    Width="200px" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium"
                    BackColor="White"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="PHNO" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Phone No :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="PHONENO" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="BDATE" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Birth Date :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:DropDownList ID="DAY" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="MONTH" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium">
                    <asp:ListItem Value="01">Jan</asp:ListItem>
                    <asp:ListItem Value="02">Feb</asp:ListItem>
                    <asp:ListItem Value="03">Mar</asp:ListItem>
                    <asp:ListItem Value="04">APRIL</asp:ListItem>
                    <asp:ListItem Value="05">MAY</asp:ListItem>
                    <asp:ListItem Value="06">Jun</asp:ListItem>
                    <asp:ListItem Value="07">Jul</asp:ListItem>
                    <asp:ListItem Value="08">Aug</asp:ListItem>
                    <asp:ListItem Value="09">Sep</asp:ListItem>
                    <asp:ListItem Value="10">Oct</asp:ListItem>
                    <asp:ListItem Value="11">Nov</asp:ListItem>
                    <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="YEAR" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium">
                    <asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1961</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem>
                    <asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1964</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem>
                    <asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1967</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem>
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td valign="top" style="background-color: white;" align="right">
                <asp:Label ID="GENDER" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Gender :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:RadioButton ID="rbtnMale" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="Black" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="rbtnFemale" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="Black" GroupName="Gender" Text="Female" /></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white; height: 23px;">
                <asp:Label ID="CITY" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="City :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px; height: 23px;" align="left">
                <asp:TextBox ID="txtcity" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City cannot be Empty"
                    Font-Bold="True" ForeColor="Salmon" ControlToValidate="txtcity"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white; height: 19px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Pin Code :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px; height: 19px;" align="left">
                <asp:TextBox ID="Pin" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="EMAIL" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="E-mail Id :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="MAIL" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="E mail id cannot be Empty"
                    Font-Bold="True" ForeColor="Salmon" ControlToValidate="MAIL"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="ID" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="User Id :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="USERID" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="USERID"
                    ErrorMessage="User Id cannot be Empty" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="height: 29px; background-color: white">
                <asp:Label ID="PWD" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Password :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                height: 29px; width: 476px;" align="left">
                <asp:TextBox ID="PASSWORD" runat="server" ForeColor="Black" TextMode="Password" Font-Bold="True"
                    Font-Names="Comic Sans MS" Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="PASSWORD"
                    ErrorMessage="Password cannot be Empty" Font-Bold="True" Font-Italic="False"
                    Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False"
                    ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" style="background-color: white">
                <asp:Label ID="EDUCATION" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="#FF8080" Text="Education :"></asp:Label></td>
            <td style="color: fuchsia; font-family: 'Comic Sans MS'; background-color: white;
                width: 476px;" align="left">
                <asp:TextBox ID="EDUCAT" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="200px" BackColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="EDUCAT"
                    ErrorMessage="Education Detail cannot be Empty" Font-Bold="True" Font-Italic="False"
                    Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False"
                    ForeColor="Salmon"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="background-color: white; vertical-align: middle;
                text-align: center;">
                <asp:LinkButton ID="linkSubmit" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="#FF8080">Submit</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="linkCancel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" ForeColor="#FF8080">Cancel</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="vertical-align: middle; background-color: white;
                text-align: center">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
