﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalculatorDemo.aspx.cs" Inherits="Demos_CalculatorDemo" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 232px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:Label ID="ResultLabel" runat="server" Text="" ViewStateMode="Enabled"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="ValueBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="OperatorList" runat="server">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="ValueBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
