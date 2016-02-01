
Partial Class Demos_CssDemos_ListControls
    Inherits System.Web.UI.Page

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click

        If (DropDownList1.SelectedIndex <> 0) Then

            labelResult.Text = "In the DDL you selected " &
            DropDownList1.SelectedValue & "<br />" &
            "Other values are: <br />"


            For Each item As ListItem In DropDownList1.Items
                If item.Value <> DropDownList1.SelectedValue Then
                    labelResult.Text += item.Value & "<br/>"
                End If
            Next

        Else
            labelResult.Text = ""
        End If


    End Sub
End Class
