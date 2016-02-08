<%@ Page Title="Basic Selectors Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true"
     CodeFile="BasicSelectors.aspx.cs" Inherits="Demos_BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <h1>Basic Selectors</h1>
    <div class="SampleClass">I am a div</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
    <script>    
        $(function()
        {
            $('*').css('color', 'Green');   // Universal
            $('#Sidebar').css('border-bottom', '2px solid red'); /// ID
            $('h1').bind('click', function ()// Element
            {
                alert("Hello world")
            });
            $('.SampleClass').addClass('PleaseWait').hide(5000);// Class
            $('footer , header').slideUp('slow').slideDown('slow'); // Grouped
            $('#Sidebar img').fadeTo(5000,0.1);
        }
        
        )
    </script>
</asp:Content>

