<%@ Page Title="Management - Insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdated="DetailsView1_ItemUpdated" OnItemUpdating="DetailsView1_ItemUpdating">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="95%" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Enter a Title" ForeColor="Red" ControlToValidate="TextBox1" runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="95%"   Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Enter a Title" ForeColor="Red" ControlToValidate="TextBox1" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Summary" SortExpression="Summary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="100px" TextMode="MultiLine" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Enter a summary" ForeColor="Red" ControlToValidate="TextBox2" runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="100px"  TextMode="MultiLine" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ErrorMessage="Enter a summary" ForeColor="Red" ControlToValidate="TextBox2" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Body" SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width ="500px" Height="100px"  Text='<%# Bind("Body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width ="500px" Height="100px" Text='<%# Bind("Body") %>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GenreId" SortExpression="GenreId">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownGenres" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" SelectedValue='<%# Bind("GenreId") %>'></asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownGenres" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" SelectedValue='<%# Bind("GenreId") %>'></asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Title], [Summary], [Body], [GenreId], [Authorized], [UpdateDateTime]) VALUES (@Title, @Summary, @Body, @GenreId, @Authorized, @UpdateDateTime)" SelectCommand="SELECT [Id], [Title], [Summary], [Body], [GenreId], [Authorized], [UpdateDateTime] FROM [Review] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Summary] = @Summary, [Body] = @Body, [GenreId] = @GenreId, [Authorized] = @Authorized, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>

</asp:Content>

