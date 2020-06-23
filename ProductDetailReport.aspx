<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ProductDetailReport.aspx.vb" Inherits="ProductDetailReport" title="Untitled Page" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True"
        Height="1065px" ReportSourceID="CrystalReportSource1" Width="932px" GroupTreeStyle-Font-Bold="True" />
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="App_Data\rptProductDetail.rpt">
        </Report>
    </CR:CrystalReportSource>
</asp:Content>

