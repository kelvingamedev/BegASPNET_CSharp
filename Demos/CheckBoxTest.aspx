<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxTest.aspx.cs" Inherits="Demos_CheckBoxTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" />
    
        <br />
        <br />
        In order to keep the state of a checkbox, just set AutoPostBack property to true</div>
    </form>
</body>
</html>
