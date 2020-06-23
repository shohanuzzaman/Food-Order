Imports System.Data
Imports System.Data.SqlClient
Partial Class FlowerMaster
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim adpt As New SqlDataAdapter
    Dim dt As New DataTable
    Dim param As New SqlParameter
    Dim strSQL As String
    Dim fid As Integer
    Dim cid As Integer
    Dim flag As Integer
    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Dim intLength As Integer
        Dim arrContent As Byte()
        If FileUpload.PostedFile Is Nothing Then
            lblStatus.Text = "No file specified."
            Exit Sub
        Else
            Dim fileName As String = FileUpload.PostedFile.FileName
            Dim ext As String = fileName.Substring(fileName.LastIndexOf("."))
            ext = ext.ToLower
            Dim imgType = FileUpload.PostedFile.ContentType
            If ext = ".jpg" Then
            ElseIf ext = ".bmp" Then
            ElseIf ext = ".gif" Then
            ElseIf ext = "jpg" Then
            ElseIf ext = "bmp" Then
            ElseIf ext = "gif" Then
            Else
                lblStatus.Text = "Only gif, bmp, or jpg format files supported."
                Exit Sub
            End If
            intLength = Convert.ToInt32(FileUpload.PostedFile.InputStream.Length)
            ReDim arrContent(intLength)
            FileUpload.PostedFile.InputStream.Read(arrContent, 0, intLength)
            Try
                If Doc2SQLServer(txttitle.Text.Trim, txtPrice.Text.Trim, arrContent, intLength, imgType) = True Then
                    lblStatus.Text = "Image uploaded successfully."
                Else
                    lblStatus.Text = "An error occured while uploading Image... Please try again."
                End If
                DropDownList1.Focus()
                txtPrice.Text = ""
                txttitle.Text = ""
            Catch ex As Exception
                Response.Redirect(ex.Message)
            End Try
        End If
    End Sub
    Protected Function Doc2SQLServer(ByVal title As String, ByVal price As Double, ByVal Content As Byte(), ByVal Length As Integer, ByVal strType As String) As Boolean
        Try
            fid = getid()
            strSQL = "Insert Into foodmaster(foodid,cid,fname,price,fimage,imgtype,imglength) Values(@fid,@cid,@title,@price,@content,@type,@length)"
            cmd = New Data.SqlClient.SqlCommand(strSQL, cn)
            param = New SqlParameter("@fid", SqlDbType.BigInt)
            param.Value = fid
            cmd.Parameters.Add(param)
            param = New SqlParameter("@cid", SqlDbType.BigInt)
            param.Value = cid
            cmd.Parameters.Add(param)
            param = New Data.SqlClient.SqlParameter("@title", Data.SqlDbType.VarChar)
            param.Value = title
            cmd.Parameters.Add(param)
            param = New Data.SqlClient.SqlParameter("@price", Data.SqlDbType.Decimal)
            param.Value = price
            cmd.Parameters.Add(param)
            param = New SqlParameter("@content", Data.SqlDbType.Image)
            param.Value = Content
            cmd.Parameters.Add(param)
            param = New Data.SqlClient.SqlParameter("@type", Data.SqlDbType.VarChar)
            param.Value = strType
            cmd.Parameters.Add(param)
            param = New Data.SqlClient.SqlParameter("@length", Data.SqlDbType.BigInt)
            param.Value = Length
            cmd.Parameters.Add(param)
            cmd.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
    Protected Function getid() As String
        cmd = New SqlCommand("select max(foodid) from foodmaster", cn)
        adpt = New SqlDataAdapter(cmd)
        dt = New DataTable
        adpt.Fill(dt)
        Try
            fid = dt.Rows(0).Item(0) + 1
        Catch ex As Exception
            fid = 1
        End Try
        Return fid
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i As Integer
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;Initial Catalog=FoodDatabase;Integrated Security=True;")
        cn.Open()
        Page.SetFocus(DropDownList1)
        'If flag = 0 Then
        '    flag = 1
        '    cmd = New SqlCommand("select cname from category", cn)
        '    adpt = New SqlDataAdapter(cmd)
        '    dt = New DataTable()
        '    adpt.Fill(dt)
        '    DropDownList1.Items.Clear()
        '    If dt.Rows.Count > 0 Then
        '        For i = 0 To dt.Rows.Count - 1
        '            DropDownList1.Items.Add(dt.Rows(i).Item(0))
        '        Next
        '    End If
        'cmd = New SqlCommand("select cid from category where cname='" & DropDownList1.Text & "'", cn)
        'adpt = New SqlDataAdapter(cmd)
        'dt = New DataTable()
        'adpt.Fill(dt)
        'If dt.Rows.Count > 0 Then
        '    cid = dt.Rows(0).Item(0)
        'End If
        'End If
        cid = DropDownList1.SelectedValue.ToString()
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        'cmd = New SqlCommand("select cid from category where cname='" & DropDownList1.Text & "'", cn)
        'adpt = New SqlDataAdapter(cmd)
        'dt = New DataTable()
        'adpt.Fill(dt)
        'If dt.Rows.Count > 0 Then
        '    cid = dt.Rows(0).Item(0)
        'End If
        cid = DropDownList1.SelectedValue.ToString()
        txtPrice.Enabled = True
        txttitle.Enabled = True
        FileUpload.Enabled = True
        Page.SetFocus(FileUpload)
    End Sub
    Protected Sub ShowData_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ShowData.Click
        'Try
        '    cmd = New SqlCommand("select cid from category where cname='" & DropDownList1.Text & "'", cn)
        '    adpt = New SqlDataAdapter(cmd)
        '    dt = New DataTable()
        '    adpt.Fill(dt)
        '    If dt.Rows.Count > 0 Then
        '        cid = dt.Rows(0).Item(0)
        '    End If

        '    Dim ds As New DataSet
        '    Dim da As SqlClient.SqlDataAdapter
        '    Dim strSQL As String
        '    strSQL = "Select flowerid,fname,price from flowermaster where cid=" & cid & ""
        '    cn = New SqlConnection("Data Source=.\SQLEXPRESS;initial catalog=FlowerDb;Integrated Security=True;")
        '    da = New SqlClient.SqlDataAdapter(strSQL, cn)
        '    da.Fill(ds)
        '    ds.Tables(0).Columns.Add("imgFile")
        '    For Each tempRow As DataRow In ds.Tables(0).Rows
        '        tempRow.Item("imgFile") = ("imgGrab.aspx?ID=" & tempRow.Item("flowerID"))
        '    Next
        '    GridView1.DataSource = ds
        '    GridView1.DataBind()
        'Catch ex As Exception

        'End Try
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Try
            fid = CInt(GridView1.Rows(GridView1.SelectedRow.RowIndex).Cells(1).Text)
            cmd = New SqlCommand("delete from foodmaster where flowerid=" & fid & "", cn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Response.Redirect(ex.Message)
        End Try
    End Sub
    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cn.Close()
    End Sub
End Class
