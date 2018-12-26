<%@ Page Language="C#" MasterPageFile="~/head.Master" AutoEventWireup="true" CodeBehind="newsDetail.aspx.cs" Inherits="News_Releases.newsDetails" %>

<asp:Content ID ="newsDetail" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d">
        <%=title%>
    </div>
    <style>
        .d{
            font-size:x-large;
            text-align:center;
        }
    </style>
    <div>
        <%=html%>
    </div>
</asp:Content>