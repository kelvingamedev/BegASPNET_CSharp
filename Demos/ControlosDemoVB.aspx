<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlosDemoVB.aspx.cs" Inherits="Demos_ControlosDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CssDemos/controlsDemo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<asp:Label ID="Label1" CssClass="label" runat="server" Text="Your Name: "></asp:Label>
<asp:TextBox ID="YourName" runat="server" EnableViewState="False" CssClass="textbox name"></asp:TextBox>
<asp:Button ID="SubmitButton" runat="server" Text="Submit Information" CssClass="button"  OnClick="SubmitButton_Click" />
    
        <br />
        <asp:Label ID="Result" runat="server"></asp:Label>
        <br/>
        <asp:Label runat="server" Text="Favourite Language:"></asp:Label>
        <asp:DropDownList ID="FavouriteLanguage" runat="server">
                <asp:ListItem Value="C#" > C#</asp:ListItem>
                <asp:ListItem Value="C#" > Visual Basic</asp:ListItem>
                <asp:ListItem Value="C#" > CSS</asp:ListItem>
         </asp:DropDownList>

    </div>
    </form>
</body>
</html>
