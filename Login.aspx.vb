Imports System.Data.SqlClient
Partial Class Login
    Inherits System.Web.UI.Page
    Public uname As String
    Dim cn As SqlConnection
    Dim cmd As SqlCommand
    Dim adpt As SqlDataAdapter
    Dim dt As New Data.DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=FoodDatabase;Integrated Security=True;")
        cn.Open()
    End Sub
    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        cmd = New SqlCommand("select * from login where uname='" & Login1.UserName & "'", cn)
        adpt = New SqlDataAdapter(cmd)
        dt = New Data.DataTable()
        adpt.Fill(dt)
        If dt.Rows.Count > 0 Then
            If dt.Rows(0).Item(1) = Login1.UserName And dt.Rows(0).Item(2) = Login1.Password Then
                If Login1.UserName = "Admin" Then
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName.ToString(), True)
                    Response.Redirect("homeAdmin.aspx")
                Else
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName.ToString(), True)
                    Response.Redirect("Home.aspx")
                End If
            End If
        Else
            FormsAuthentication.RedirectFromLoginPage("", True)
        End If
    End Sub
End Class
