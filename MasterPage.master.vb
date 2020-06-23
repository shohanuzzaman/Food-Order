Imports System.Data
Imports System.Data.SqlClient
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As New SqlDataAdapter
    Dim dt As New DataTable
    Dim regid As Integer
    Dim sid As Integer
    Dim amt As Double
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;initial catalog=FoodDatabase;Integrated Security=True;")
        cn.Open()
    End Sub
    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        'If HttpContext.Current.User.Identity.Name.ToString() <> "" Then
        '    FormsAuthentication.RedirectToLoginPage()
        '    FormsAuthentication.SignOut()
        'End If
    End Sub
  Protected Sub LoginStatus2_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        FormsAuthentication.SignOut()
        FormsAuthentication.RedirectToLoginPage()
        Response.Redirect("~/Home.aspx")
    End Sub
    Protected Sub LoginStatus1_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        Response.Redirect("Home.aspx")
        FormsAuthentication.RedirectToLoginPage()
        FormsAuthentication.SignOut()
    End Sub

    Protected Sub linkSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSubmit.Click
        Response.Redirect("ShowCart.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("PaymentDetail.aspx")
    End Sub
End Class

