<%@ Page Title="Management - Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="dropGenreFilter" runat="server" AppendDataBoundItems="true" AutoPostBack="True" DataSourceID="SqlDataGenre" DataTextField="Name" DataValueField="Id">
        <asp:ListItem Value="">Make a Selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataReviews">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
                <ItemTemplate>
                    <asp:Label runat="server" ID="AuthorizedLabel" Text='<%# GetBooleanText(Eval("Authorized")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br/>
    <a href="AddEditReview.aspx">New Review</a>
    <asp:SqlDataSource ID="SqlDataReviews" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Title], [CreateDateTime], [Authorized]) VALUES (@Title, @CreateDateTime, @Authorized)" SelectCommand="SELECT [Id], [Title], [CreateDateTime], [Authorized] FROM [Review] WHERE ([GenreId] = @GenreId) ORDER BY [CreateDateTime] DESC" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [CreateDateTime] = @CreateDateTime, [Authorized] = @Authorized WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="dropGenreFilter" Name="GenreId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataGenre" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [Name], [Id] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>

