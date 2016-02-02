<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 41px;
    }
    .auto-style3 {
        width: 132px;
    }
    .auto-style4 {
        width: 70px;
    }
    .auto-style5 {
        width: 70px;
        height: 23px;
    }
    .auto-style6 {
        width: 132px;
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3" class="auto-style2">
            <h1>Leave a comment</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Name:</td>
        <td class="auto-style3">
            <asp:TextBox ID="textBoxName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Enter Your Name" CssClass="ErrorMessage" Text="*" ControlToValidate="textBoxName">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3"> <!--Test things here --> <asp:TextBox runat="server" runrat="server" ID="Color" TextMode="Color" />       </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="sendButton" runat="server" Text="Send" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

