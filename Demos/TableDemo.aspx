<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Bullet List</td>
                <td>
                    <ul>
                        <li>Pos-Punk</li>
                        <li>Post-Rock</li>
                        <li>Hard Rock</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Numbered List</td>
                <td>
                    <ol>
                        <li>Eletronic Music</li>
                        <li>Death Metal</li>
                        <li>Classic Music</li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Link</td>
                <td><a href="../Default.aspx">Go to the homepage of Planet Wrox</a></td>
                
            </tr>
            <tr>
                <td class="auto-style2">Link to Wrox website</td>
                <td><a href="http://www.wrox.com">Go to Wrox website (external link)</a></td>
                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
