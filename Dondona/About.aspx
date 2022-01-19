<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Dondona.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>DON DON COUNT STAT, UGU UWU</h2>

    
        <h3>COUND UN DE ROLE</h3><hr />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                    </td>
                    <td>
                        <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="countTextBox" runat="server" Text='<%# Bind("count") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nie zostały zwrócone żadne dane.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                    </td>
                    <td>
                        <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="countTextBox" runat="server" Text='<%# Bind("count") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Role</th>
                                    <th runat="server">count</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DondonaConnectionString %>" SelectCommand="SELECT Role, COUNT(*) as 'count' FROM dbo.Dondona_Table GROUP BY Role;"></asp:SqlDataSource>
        


    <br />
    <h3>UNDE WEAPON ELE OLDE POPULAR, UNGA WU</h3>
    <div>
        <div>

        
    
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                </td>
                <td>
                    <asp:Label ID="POPULAR_UNGALabel" runat="server" Text='<%# Eval("[POPULAR UNGA]") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                </td>
                <td>
                    <asp:TextBox ID="WeaponTextBox" runat="server" Text='<%# Bind("Weapon") %>' />
                </td>
                <td>
                    <asp:TextBox ID="POPULAR_UNGATextBox" runat="server" Text='<%# Bind("[POPULAR UNGA]") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Nie zostały zwrócone żadne dane.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                </td>
                <td>
                    <asp:TextBox ID="WeaponTextBox" runat="server" Text='<%# Bind("Weapon") %>' />
                </td>
                <td>
                    <asp:TextBox ID="POPULAR_UNGATextBox" runat="server" Text='<%# Bind("[POPULAR UNGA]") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                </td>
                <td>
                    <asp:Label ID="POPULAR_UNGALabel" runat="server" Text='<%# Eval("[POPULAR UNGA]") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">Weapon</th>
                                <th runat="server">POPULAR UNGA</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                </td>
                <td>
                    <asp:Label ID="POPULAR_UNGALabel" runat="server" Text='<%# Eval("[POPULAR UNGA]") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
            <asp:Image ID="Image1" runat="server" Height="88px" ImageUrl="~/Content/szpadel.png" Width="86px" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DondonaConnectionString %>" SelectCommand="SELECT TOP 1 Weapon, COUNT(*) AS 'POPULAR UNGA' FROM [Dondona_Table] GROUP BY Weapon ORDER BY 'POPULAR UNGA' DESC;"></asp:SqlDataSource>
    <hr />
            <iframe width="1055" height="703" src="https://www.youtube.com/embed/54CzhuL9IqM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>
    </div>
    </div>
</asp:Content>
