Imports System.Data
Imports System.Data.SqlClient
Partial Class ShowCart
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As New SqlDataAdapter
    Dim dt As New DataTable
    Dim regid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (HttpContext.Current.User.Identity.Name = "") Then
            Response.Redirect("Login.aspx")
        Else
            Try
                cn = New SqlConnection("Data Source=.\SQLEXPRESS;initial catalog=FoodDatabase;Integrated Security=True;")
                cn.Open()
                cmd = New SqlCommand("select reg_id from reg where uname='" & HttpContext.Current.User.Identity.Name.ToString() & "'", cn)
                adpt = New SqlDataAdapter(cmd)
                dt = New DataTable()
                adpt.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    regid = dt.Rows(0).Item(0)
                End If
                Dim ds As New DataSet
                Dim da As SqlClient.SqlDataAdapter
                Dim strSQL As String
                strSQL = "Select cart_id,foodid,fname,qua,price from cart where reg_id=" & regid & " and paid='No'"
                da = New SqlClient.SqlDataAdapter(strSQL, cn)
                da.Fill(ds)
                ds.Tables(0).Columns.Add("imgFile")
                For Each tempRow As DataRow In ds.Tables(0).Rows
                    tempRow.Item("imgFile") = ("imgGrab.aspx?ID=" & tempRow.Item("FoodId"))
                Next
                GridView1.DataSource = ds
                GridView1.DataBind()
                cn.Close()
            Catch ex As Exception

            End Try
            TextBox1.Enabled = False
            Button1.Enabled = False
        End If
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Enabled = True
        TextBox1.Focus()
        Button1.Enabled = True
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn.Open()
        Dim cartid As Integer = CInt(GridView1.SelectedRow.Cells(1).Text)
        If (CInt(TextBox1.Text) = 0) Then
            cmd = New SqlCommand("delete from cart where cart_id=" & cartid & "", cn)
            cmd.ExecuteNonQuery()
            Page_Load(sender, e)
        Else
            cmd = New SqlCommand("update cart set qua=" & CInt(TextBox1.Text) & " where cart_id=" & cartid & "", cn)
            cmd.ExecuteNonQuery()
            Page_Load(sender, e)
        End If
        cn.Close()
        TextBox1.Text = ""
        TextBox1.Enabled = False
        Button1.Enabled = False
    End Sub
End Class
