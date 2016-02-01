<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SkinsDemo.aspx.cs" Inherits="Demos_SkinsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skin's Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Button ID="Button1" runat="server" Text="Click on me!" />
        <asp:Button ID="Button2" runat="server" Text="On me two!" SkinID="RedButton"/>
    </div>
    </form>
</body>
</html>
