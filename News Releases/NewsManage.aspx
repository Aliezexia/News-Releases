<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsManage.aspx.cs" Inherits="News_Releases.NewsManage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="top">
                <div class="nav fl">
                    <a href="Message.aspx" class="current">首&nbsp;&nbsp;页</a>
                    <a href="/newsDetail.aspx?categories='国际新闻'">国际</a>
                    <a href="/newsDetail.aspx?categories='经济新闻'">财经</a>
                    <a href="/newsDetail.aspx?categories='热点新闻'">热点</a>
                    <a href="/newsDetail.aspx?categories='娱乐新闻'">娱乐</a>
                    <a href="/newsDetail.aspx?categories='社会新闻'">社会</a>
                    <a href="/newsDetail.aspx?categories='时政新闻'">时政</a>
                    <a href="/news/new_f5.jpg.html">风景</a>
                    <a href="/news/G20.html">中国</a>
                    <a href="/news/hanchaolanse.html">天气</a>
                    <a href="/news/jingjiguancha.html">直播</a>
                    <a href="/news/dashi.html">文化</a>
                    <a href="/news/taimei.html">台湾</a>
                    <a href="addNews.aspx">发布新闻</a>

                </div>
                <style type="text/css">
                    body {
                        background: url(/images/2.jpg);
                        background-size: 100%;
                    }

                    #top,
                    .banner,
                    .content {
                        width: 70%;
                        margin: 0 auto;
                        background: #fff;
                    }

                    #top {
                        height: 45px;
                    }


                    .nav {
                        width: 100%;
                        height: 35px;
                        border-top: solid 10px #000;
                        margin-top: 9px;
                    }

                        .nav a {
                            font-size: 16px;
                            line-height: 35px;
                            padding: 0 8px;
                            color: #000;
                            height: 35px;
                            display: inline-block;
                        }

                            .nav a:hover,
                            .current {
                                color: #fff !important;
                                background: #900;
                            }

                    .auto-style1 {
                        width: 100%;
                    }
                    .auto-style2 {
                        margin-bottom: 0px;
                    }
                </style>
            </div>
            <div class="content">
                <table class="auto-style1">
                    <tr>
                        <td>输入关键字：
                    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>&nbsp;
                    <asp:DropDownList ID="ddlNewsCategories" runat="server" Width="78px" CausesValidation="True">
                        <asp:ListItem>国际新闻</asp:ListItem>
                        <asp:ListItem>娱乐新闻</asp:ListItem>
                        <asp:ListItem>热点新闻</asp:ListItem>
                        <asp:ListItem>时政新闻</asp:ListItem>
                        <asp:ListItem>经济新闻</asp:ListItem>
                        <asp:ListItem>社会新闻</asp:ListItem>
                    </asp:DropDownList>
                            &nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Height="20px" OnClick="btnSearch_Click" Text="查询" />
                            
                            <asp:Button ID="btnclear" runat="server" CssClass="auto-style2" OnClick="btn_clear" Text="退出登录" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gridNews" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                Height="1px" PageSize="12" Width="100%" CssClass="txt" OnPageIndexChanging="gvdNews_PageIndexChanging"
                                OnRowDeleting="gvdNews_RowDeleting" OnRowDataBound="gvdNews_RowDataBound" CellPadding="3"
                                BackColor="White">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID"></asp:BoundField>
                                    <asp:BoundField DataField="Title" HeaderText="新闻标题"></asp:BoundField>
                                    <asp:BoundField DataField="Categories" HeaderText="新闻类别"></asp:BoundField>
                                    <asp:BoundField DataField="Date" HeaderText="发布时间"></asp:BoundField>
                                    <asp:HyperLinkField HeaderText="操作" Text="编辑" DataNavigateUrlFields="id" DataNavigateUrlFormatString="UpdateNews.aspx?id={0}"
                                        Target="right"></asp:HyperLinkField>
                                    <asp:CommandField ShowDeleteButton="True" HeaderText="操作"></asp:CommandField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <RowStyle ForeColor="#000066" />
                                <EmptyDataTemplate>
                                    抱歉，您要查询的信息不存在!
                                </EmptyDataTemplate>
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#cc0000" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
