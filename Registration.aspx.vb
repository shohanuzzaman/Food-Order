Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As SqlDataAdapter
    Dim dt As DataTable
    Dim regis As Integer
    Dim g As String
    Dim regid As Integer
    Protected Sub linkSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSubmit.Click
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;initial catalog=FoodDatabase;Integrated Security=True;")
        cn.Open()
        Try
            Dim datt As New Date
            datt = New Date(YEAR.Text, MONTH.Text, DAY.Text)

            If rbtnFemale.Checked = True Then
                g = "Female"
            Else
                g = "Male"
            End If

            getid()

            cmd = New SqlCommand("insert into reg values(" & regid & ",'" & FNAME.Text & "','" & LNAME.Text & "','" & MNAME.Text & "','" & ADDRESS.Text & "','" & PHONENO.Text & "','" & datt & "','" & g & "','" & txtcity.Text & "'," & Pin.Text & ",'" & MAIL.Text & "','" & USERID.Text & "','" & PASSWORD.Text & "','" & EDUCAT.Text & "')", cn)
            cmd.ExecuteNonQuery()
            cmd = New SqlCommand("insert into login values(" & regid & ",'" & USERID.Text & "','" & PASSWORD.Text & "')", cn)
            cmd.ExecuteNonQuery()
            Response.Redirect("Home.aspx")
        Catch ex As Exception
            Label4.Text = ex.Message
        End Try
    End Sub
    Public Sub getid()
        cmd = New SqlCommand("select max(reg_id) from reg", cn)
        adpt = New SqlDataAdapter(cmd)
        dt = New DataTable()
        adpt.Fill(dt)
        If (dt.Rows.Count > 0) And dt.Rows(0).Item(0) <> 0 Then
            regid = dt.Rows(0).Item(0) + 1
        Else
            regid = 1
        End If
    End Sub
    Protected Sub linkCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkCancel.Click
        USERID.Text = " "
        PASSWORD.Text = " "
        ADDRESS.Text = " "
        FNAME.Text = " "
        LNAME.Text = " "
        MNAME.Text = " "
        PHONENO.Text = " "
        txtcity.Text = " "
        Pin.Text = " "
        MAIL.Text = " "
        Response.Redirect("Home.aspx")
    End Sub
End Class
