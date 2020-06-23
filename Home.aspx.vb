Imports System.Data
Imports System.Data.SqlClient
Partial Class All_Flowers
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As New SqlDataAdapter
    Dim dt As New DataTable
    Dim param As New SqlParameter
    Dim strSQL As String
    Dim fid As Integer
    Dim cid As Integer
    Dim cartid As Integer
    Dim intLength As Integer
    Dim Content As Byte()
    Dim price As Decimal
    Dim strtype As String
    Dim Length As Integer
    Dim regid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (HttpContext.Current.User.Identity.Name = "") Then
            Response.Redirect("Login.aspx")
        Else
            Try
                Dim ds As New DataSet
                Dim da As SqlClient.SqlDataAdapter
                Dim strSQL As String
                strSQL = "Select FoodId,fname,price from FoodMaster where cid=1"
                cn = New SqlConnection("Data Source=.\SQLEXPRESS;initial catalog=FoodDatabase;Integrated Security=True;")

                da = New SqlClient.SqlDataAdapter(strSQL, cn)
                da.Fill(ds)
                ds.Tables(0).Columns.Add("imgFile")
                For Each tempRow As DataRow In ds.Tables(0).Rows
                    tempRow.Item("imgFile") = ("imgGrab.aspx?ID=" & tempRow.Item("FoodId"))
                Next
                GridView1.DataSource = ds
                GridView1.DataBind()
            Catch ex As Exception

            End Try
        End If
    End Sub
    Protected Function getid() As String
        cmd = New SqlCommand("select max(cart_id) from cart", cn)
        adpt = New SqlDataAdapter(cmd)
        dt = New DataTable
        adpt.Fill(dt)
        Try
            cartid = dt.Rows(0).Item(0) + 1
        Catch ex As Exception
            cartid = 1
        End Try
        Return cartid
    End Function
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Enabled = True
        TextBox1.Focus()
        Button1.Enabled = True
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (Request.IsAuthenticated) Then
            cn.Open()
            cmd = New SqlCommand("select reg_id from reg where uname='" & HttpContext.Current.User.Identity.Name.ToString() & "'", cn)
            adpt = New SqlDataAdapter(cmd)
            dt = New DataTable()
            adpt.Fill(dt)
            If (dt.Rows.Count > 0) Then
                regid = dt.Rows(0).Item(0)
            End If

            fid = CInt(GridView1.SelectedRow.Cells(1).Text)
            cmd = New SqlCommand("select * from FoodMaster where FoodId=" & fid & "", cn)
            adpt = New SqlDataAdapter(cmd)
            dt = New DataTable()
            adpt.Fill(dt)

            If (dt.Rows.Count > 0) Then
                cid = dt.Rows(0).Item(1)
                Title = dt.Rows(0).Item(2)
                price = dt.Rows(0).Item(3)
                Content = dt.Rows(0).Item(4)
                strtype = dt.Rows(0).Item(5)
                Length = dt.Rows(0).Item(6)
            End If
            Try
                strSQL = "Insert Into cart(cart_id,FoodId,cid,fname,price,fimage,imgtype,imglength,cart_date,qua,reg_id,paid) Values(@cartid,@fid,@cid,@title,@price,@content,@type,@length,@cart_date,@qua,@reg_id,'No')"
                cartid = getid()
                cmd = New Data.SqlClient.SqlCommand(strSQL, cn)
                param = New SqlParameter("@cartid", SqlDbType.BigInt)
                param.Value = cartid
                cmd.Parameters.Add(param)
                param = New SqlParameter("@fid", SqlDbType.BigInt)
                param.Value = fid
                cmd.Parameters.Add(param)
                param = New SqlParameter("@cid", SqlDbType.BigInt)
                param.Value = cid
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@title", Data.SqlDbType.VarChar)
                param.Value = Title
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@price", Data.SqlDbType.Decimal)
                param.Value = price * CInt(TextBox1.Text)
                cmd.Parameters.Add(param)
                param = New SqlParameter("@content", Data.SqlDbType.Image)
                param.Value = Content
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@type", Data.SqlDbType.VarChar)
                param.Value = strtype
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@length", Data.SqlDbType.BigInt)
                param.Value = Length
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@cart_date", Data.SqlDbType.DateTime)
                param.Value = Now.Date
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@qua", Data.SqlDbType.Int)
                param.Value = CInt(TextBox1.Text)
                cmd.Parameters.Add(param)
                param = New Data.SqlClient.SqlParameter("@reg_id", Data.SqlDbType.Int)
                param.Value = regid
                cmd.Parameters.Add(param)
                cmd.ExecuteNonQuery()
                cn.Close()
            Catch ex As Exception

            End Try
        Else
            Response.Redirect("Login.aspx")
        End If
        Button1.Enabled = False
        TextBox1.Enabled = False
    End Sub
End Class
