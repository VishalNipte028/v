<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="productapi.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 595px;
        }
        .auto-style2 {
            width: 239px;
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style13 {
            width: 263px;
        }
        .auto-style17 {
            width: 234px;
            height: 77px;
        }
        .auto-style18 {
            width: 239px;
            height: 77px;
        }
        .auto-style19 {
            width: 263px;
            height: 77px;
        }
        .auto-style20 {
            height: 77px;
        }
        .auto-style21 {
            width: 212px;
        }
        .auto-style23 {
            height: 77px;
            width: 212px;
        }
        .auto-style24 {
            width: 234px;
            height: 76px;
        }
        .auto-style25 {
            width: 239px;
            height: 76px;
        }
        .auto-style26 {
            width: 263px;
            height: 76px;
        }
        .auto-style27 {
            height: 76px;
            width: 212px;
        }
        .auto-style28 {
            height: 76px;
        }
        .auto-style29 {
            width: 234px;
            height: 64px;
        }
        .auto-style30 {
            width: 239px;
            height: 64px;
        }
        .auto-style31 {
            width: 263px;
            height: 64px;
        }
        .auto-style32 {
            width: 212px;
            height: 64px;
        }
        .auto-style33 {
            height: 64px;
        }
        .auto-style34 {
            width: 234px;
            height: 78px;
        }
        .auto-style35 {
            width: 239px;
            height: 78px;
        }
        .auto-style36 {
            width: 263px;
            height: 78px;
        }
        .auto-style37 {
            height: 78px;
            width: 212px;
        }
        .auto-style38 {
            height: 78px;
        }
    </style>
</head>
<body style="background-color:aquamarine ">
    <form id="form1" runat="server">
        <table class="auto-style1" style="border:solid">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">
                    <h2>  product details</h2>
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Label ID="Label2" runat="server" Height="41px" Text="ProductId" Width="178px"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style38"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Height="41px" Text="ProductName" Width="178px"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox5" runat="server" Height="36px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Height="41px" Text="Category Id" Width="178px"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox6" runat="server" Height="36px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Label ID="Label5" runat="server" Height="41px" Text="Category name" Width="178px"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox7" runat="server" Height="36px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style23"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Product" Width="202px" />
                </td>
                <td class="auto-style26">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Remove Product" Width="239px" />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update Product" Width="186px" />
                </td>
                <td class="auto-style28">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="search Product" Width="216px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Record" />
                </td>
                <td class="auto-style32"></td>
                <td class="auto-style33"></td>
            </tr>
        </table>
    </form>
</body>
</html>
