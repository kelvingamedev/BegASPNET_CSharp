<%@ Page Title="jQuerys Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true"
    CodeFile="jQuerysDemo.aspx.cs" Inherits="Demos_jQuerysDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <h1 title="Frist Header">Frist Header</h1>

    <table id="DemoTable" class="auto-style1">
        <tr>
            <td>Row1 Cell1</td>
            <td>Row1 Cell2</td>
        </tr>
        <tr>
            <td>Row2 Cell1</td>
            <td>Row2 Cell2</td>
        </tr>
        <tr>
            <td>Row3 Cell1</td>
            <td>Row3 Cell2</td>
        </tr>
        <tr>
            <td>Row4 Cell1</td>
            <td>Row4 Cell2</td>
        </tr>
        <tr>
            <td>Row4 Cell1</td>
            <td>Row4 Cell2</td>
        </tr>
    </table>
    <h2>Second <span style="font-style: italic; font-weight: bold">Header</span> </h2>
    <input id="Button1" type="button" value="button" />
    <input id="Text1" type="text" />
    <input id="Checkbox1" type="checkbox" />
    <input id="Checkbox2" type="checkbox" />
    <p>This is a paragraph</p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="Server">
    <script>
        $(function () {
            $('h1').animate({
                opacity: 0.4,
                marginLeft: '50px',
                fontSize: '50px'
            }, 1500);
        }
        );
    </script>
</asp:Content>

