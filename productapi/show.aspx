<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="productapi.show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style10 {
            width: 94%;
            height: 518px;
        }
        .auto-style11 {
            width: 1075px;
        }
        .auto-style12 {
            width: 167px;
        }
        .auto-style13 {
            width: 504px;
        }
    </style>
</head>
<body style="background-color:aquamarine">
    <form id="form1" runat="server">
        <table class="auto-style10" style="border:solid">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="productid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagoryidLabel" runat="server" Text='<%# Eval("catagoryid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagorynameLabel" runat="server" Text='<%# Eval("catagoryname") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="productidLabel1" runat="server" Text='<%# Eval("productid") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="catagoryidTextBox" runat="server" Text='<%# Bind("catagoryid") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="catagorynameTextBox" runat="server" Text='<%# Bind("catagoryname") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="productnameTextBox0" runat="server" Text='<%# Bind("productname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="catagoryidTextBox0" runat="server" Text='<%# Bind("catagoryid") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="catagorynameTextBox0" runat="server" Text='<%# Bind("catagoryname") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="productidLabel2" runat="server" Text='<%# Eval("productid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel0" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagoryidLabel0" runat="server" Text='<%# Eval("catagoryid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagorynameLabel0" runat="server" Text='<%# Eval("catagoryname") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server">productid</th>
                                                <th runat="server">productname</th>
                                                <th runat="server">catagoryid</th>
                                                <th runat="server">catagoryname</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="productidLabel3" runat="server" Text='<%# Eval("productid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="productnameLabel1" runat="server" Text='<%# Eval("productname") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagoryidLabel1" runat="server" Text='<%# Eval("catagoryid") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="catagorynameLabel1" runat="server" Text='<%# Eval("catagoryname") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductConnectionString %>" DeleteCommand="DELETE FROM [products] WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND [catagoryid] = @original_catagoryid AND (([catagoryname] = @original_catagoryname) OR ([catagoryname] IS NULL AND @original_catagoryname IS NULL))" InsertCommand="INSERT INTO [products] ([productname], [catagoryid], [catagoryname]) VALUES (@productname, @catagoryid, @catagoryname)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [productname] = @productname, [catagoryid] = @catagoryid, [catagoryname] = @catagoryname WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND [catagoryid] = @original_catagoryid AND (([catagoryname] = @original_catagoryname) OR ([catagoryname] IS NULL AND @original_catagoryname IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_productid" Type="Int32" />
                            <asp:Parameter Name="original_productname" Type="String" />
                            <asp:Parameter Name="original_catagoryid" Type="Int32" />
                            <asp:Parameter Name="original_catagoryname" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="catagoryid" Type="Int32" />
                            <asp:Parameter Name="catagoryname" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="productname" Type="String" />
                            <asp:Parameter Name="catagoryid" Type="Int32" />
                            <asp:Parameter Name="catagoryname" Type="String" />
                            <asp:Parameter Name="original_productid" Type="Int32" />
                            <asp:Parameter Name="original_productname" Type="String" />
                            <asp:Parameter Name="original_catagoryid" Type="Int32" />
                            <asp:Parameter Name="original_catagoryname" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
