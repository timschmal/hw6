Public Class master
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim today As String
        today = DateValue(Now)
        Label1.Text = today
    End Sub

End Class