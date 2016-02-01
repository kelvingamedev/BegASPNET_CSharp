<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Containers.aspx.cs" Inherits="Demos_CssDemos_Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CssDemos/container.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="checkShowPanel" runat="server" AutoPostBack="True" Text="Show Panel" OnCheckedChanged="checkShowPanel_CheckedChanged" />
        <br />
        <asp:Panel ID="Panel1" CssClass="panel" runat="server" Height="217px" Visible="False" BorderColor="Aqua" >
            <!--I am visible now-->

            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="109px" Width="500px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="About you">
                        Type your name:
                        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Favourite language" StepType="Finish">
                        Choose your favourite language:<br />
                        <asp:DropDownList ID="favoriteLanguage" runat="server">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>VB</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                            <asp:ListItem>None of them</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                        <asp:Label ID="Result" Text="" runat="server" />
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
