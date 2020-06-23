Imports System.Data
Imports System.Data.SqlClient
Partial Class imgGrab
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim ds As New DataSet
            Dim da As SqlClient.SqlDataAdapter
            Dim arrContent As Byte()
            Dim dr As DataRow
            Dim strSql As String
            strSql = "Select * from foodmaster Where FoodId=" & Request.QueryString("ID")
            Dim connString As String = "Data Source=.\SQLEXPRESS;initial catalog=FoodDatabase;Integrated Security=True;"
            da = New SqlClient.SqlDataAdapter(strSql, connString)
            da.Fill(ds)
            dr = ds.Tables(0).Rows(0)
            arrContent = CType(dr.Item("FImage"), Byte())
            Dim conType As String = dr.Item("imgType").ToString()
            Response.ContentType = conType
            Response.OutputStream.Write(arrContent, 0, dr.Item("imgLength"))
            Response.End()
        Catch ex As Exception
        End Try
    End Sub
End Class
