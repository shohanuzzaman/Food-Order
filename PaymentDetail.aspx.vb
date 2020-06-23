Imports System.Data
Imports System.Data.SqlClient
Partial Class PaymentDetail
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As New SqlDataAdapter
    Dim dt As DataTable
    Dim regid As Integer
    Dim sid As Integer
    Dim amt As Double
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
                strSQL = "Select cart_id,foodid,fname,qua,price from cart where reg_id=" & regid & ""
                da = New SqlClient.SqlDataAdapter(strSQL, cn)
                da.Fill(ds)
                GridView1.DataSource = ds
                GridView1.DataBind()
                cmd = New SqlCommand("select sum(price) from cart where reg_id=" & regid & "", cn)
                adpt = New SqlDataAdapter(cmd)
                dt = New DataTable()
                adpt.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    amt = dt.Rows(0).Item(0)
                    txtAmt.Text = amt
                End If
                cn.Close()
            Catch ex As Exception

            End Try
        End If
    End Sub
    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("Home.aspx")
    End Sub
    Protected Sub btnPay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPay.Click
        cn.Open()
        If (HttpContext.Current.User.Identity.Name.ToString() <> "") Then
            Try
                cmd = New SqlCommand("select reg_id from reg where uname='" & HttpContext.Current.User.Identity.Name.ToString() & "'", cn)
                adpt = New SqlDataAdapter(cmd)
                dt = New DataTable()
                adpt.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    regid = dt.Rows(0).Item(0)
                End If
                sid = getid()
                cmd = New SqlCommand("insert into shopping values(" & sid & ",'" & Now.Date & "'," & regid & "," & amt & ",'" & txtCard.Text & "','" & txtcardhname.Text & "','" & cmbCardType.Text & "','" & txtExpiryDate.Text & "')", cn)
                cmd.ExecuteNonQuery()
                cmd = New SqlCommand("update cart set paid='Yes' where reg_id=" & regid & "", cn)
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('Thank you for Your Payment')</script>")
                Response.Redirect("Home.aspx")
            Catch ex As Exception

            End Try
        Else
            Response.Redirect("Login.aspx")
        End If
    End Sub
    Protected Function getid() As String
        cmd = New SqlCommand("select max(s_id) from shopping", cn)
        adpt = New SqlDataAdapter(cmd)
        dt = New DataTable()
        adpt.Fill(dt)
        Try
            sid = dt.Rows(0).Item(0) + 1
        Catch
            sid = 1
        End Try
        Return sid
    End Function
End Class
