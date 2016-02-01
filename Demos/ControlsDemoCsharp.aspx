<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemoCsharp.aspx.cs" Inherits="Demos_ControlsDemoCsharp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label Text="Choose your favourite language:" runat="server"  />
        <p/>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:DropDownList>
    
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        <p/>
            <asp:Label ID="labelResult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
