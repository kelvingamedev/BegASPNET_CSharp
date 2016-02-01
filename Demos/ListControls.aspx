<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListControls.aspx.vb" Inherits="Demos_CssDemos_ListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" Text="Choose your favourite language:"></asp:Label>   
        <br/>    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Submit" runat="server" Text="Submit" />
        <asp:Label runat="server" ID="labelResult" ></asp:Label>
    
    </div>
    </form>
</body>
</html>
