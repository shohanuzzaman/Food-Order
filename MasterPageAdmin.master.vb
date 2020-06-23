Partial Class MasterPageAdmin
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    Protected Sub LoginStatus2_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        FormsAuthentication.SignOut()
        FormsAuthentication.RedirectToLoginPage()
        Response.Redirect("~/Home.aspx")
    End Sub

    Protected Sub LoginStatus1_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        FormsAuthentication.SignOut()
        FormsAuthentication.RedirectToLoginPage()
        Response.Redirect("~/Home.aspx")
    End Sub
End Class

