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
        width: 102px;
    }

    .auto-style5 {
        width: 102px;
        height: 23px;
    }

    .auto-style6 {
        width: 132px;
        height: 23px;
    }

    .auto-style7 {
        height: 23px;
    }

    .auto-style8 {
        width: 102px;
        height: 26px;
    }

    .auto-style9 {
        width: 132px;
        height: 26px;
    }

    .auto-style10 {
        height: 26px;
    }

    .auto-style11 {
        width: 102px;
        height: 48px;
    }

    .auto-style12 {
        width: 132px;
        height: 48px;
    }

    .auto-style13 {
        height: 48px;
    }
</style>
<script>
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= textBoxPersonalPhone.ClientID %>');
        var phoneBusiness = document.getElementById('<%= textBoxBusinessPhone.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>

<asp:UpdatePanel runat="server" ID="updatePanel">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" id="FormTable" runat="server">
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
                        <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Enter Your Name" CssClass="ErrorMessage" Text="*" ControlToValidate="textBoxName" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Email:</td>
                    <td class="auto-style9">
                        <!--Test things here -->
                        <asp:TextBox ID="textBoxEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Enter your e-mail" ControlToValidate="textBoxEmail" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Enter a valid e-mail" CssClass="ErrorMessage" ControlToValidate="textBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Confirm E-mail:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="textBoxConfirmEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Confirm your e-mail" ControlToValidate="textBoxConfirmEmail" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="The e-mail address don't match" ControlToCompare="textBoxEmail" ControlToValidate="textBoxConfirmEmail" CssClass="ErrorMessage">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Personal Phone</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="textBoxPersonalPhone" runat="server" ClientIDMode="Static"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Phone Business</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="textBoxBusinessPhone" runat="server" ClientIDMode="Static"></asp:TextBox>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Comments:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="textBoxComments" runat="server" Height="69px" TextMode="MultiLine" Width="198px" OnTextChanged="textBoxComments_TextChanged" ValidateRequestMode="Disabled"> </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Enter a comment" ControlToValidate="textBoxComments" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="sendButton" runat="server" Text="Send" OnClick="sendButton_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
                    </td>
                </tr>
            </table>
        </div>

        <p>
            <asp:Label ID="Message" Text="Message Sent" Visible="false" runat="server" CssClass="Attention"></asp:Label>
            <p runat="server" id="MessageSentPara" visible="false">
                Thank you for the message.
                We'll get in touch with you if necessary.
            </p>
        </p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updatePanel">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script>
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });

    function pageLoad()
    {
        $('.Attention').animate({ width: '600px' }, 3000).
                animate({ width: '100px' }, 3000).fadeOut('slow');
    }

</script>



