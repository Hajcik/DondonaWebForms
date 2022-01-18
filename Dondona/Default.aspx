<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dondona._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <center><h1>🏹 DONDONA TRIBE 🏹</h1></center>
        <center><p class="lead">DONDONA, BUMBA WUMBA, UGA BUGA, DO!</p></center>
    </div>
    <div>     
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="DEL" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="EDIT" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'  />
                    </td>
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="UPDATE" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="CANCEL" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="WeaponTextBox" runat="server" Text='<%# Bind("Weapon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="NEW" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="CLEAR" />
                    </td>
                    <td>
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="WeaponTextBox" runat="server" Text='<%# Bind("Weapon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="DEL" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="EDIT" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">🆔</th>
                                    <th runat="server">Name 🗿</th>
                                    <th runat="server">Role 🔥</th>
                                    <th runat="server">Gender ⚥</th>
                                    <th runat="server">Weapon 🗡️</th>
                                    <th runat="server">Age 🔞</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Usuń" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edytuj" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WeaponLabel" runat="server" Text='<%# Eval("Weapon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DondonaConnectionString %>" DeleteCommand="DELETE FROM [Dondona_Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Dondona_Table] ([Id], [Name], [Role], [Gender], [Weapon], [Age]) VALUES (@Id, @Name, @Role, @Gender, @Weapon, @Age)" SelectCommand="SELECT * FROM [Dondona_Table] ORDER BY [Id]" UpdateCommand="UPDATE [Dondona_Table] SET [Name] = @Name, [Role] = @Role, [Gender] = @Gender, [Weapon] = @Weapon, [Age] = @Age WHERE [Id] = @Id" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Weapon" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Weapon" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/Content/szpadel.png" Width="61px" />
    </div>
    <br />
    <div>
        <iframe width="1280" height="544" src="https://www.youtube.com/embed/2BiXP_qpdHE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>
    </div>
</asp:Content>
