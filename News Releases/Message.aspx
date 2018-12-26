<%@ Page Language="C#" MasterPageFile="~/head.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="News_Releases.Register" %>
    
    <asp:Content ID="content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content">
			<div class="con-left">
				<a href="/news/new_3.jpg.html"><img src="/images/3.jpg"></a>
				<a href="/news/new_4.jpg.html"><img src="/images/4.jpg"></a>
				<a href="/news/new_f5.jpg.html"><img src="/images/5.jpg" /></a>
			</div>
			<div class="auto-style2">
                <div class="a">
                <table cellspacing="0px">
				<tr>
                    <td class="q">
                        国际新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstguoji" runat="server" OnItemCommand="dlstguoji_ItemCommand"
                                Height="244px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="279px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server"  CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <style>
                                                .dtd2{
                                                    font-size:larger;
                                                }
                                                a{
                                                    color:black;
                                                    text-decoration:none;
                                                }
                                                a:hover{
                                                    color:red;
                                                }
                                                .q{
                                                    color:red;
                                                    font-weight:700;
                                                    font-family:FangSong;
                                                }
                                            </style>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    </table>
				</div>
                <div class="a">
                    <table>
				<tr>
                    <td class="q">
                        经济新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstjingji" runat="server" OnItemCommand="dlstjingji_ItemCommand"
                                Height="244px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="276px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    
                    </table>
                    <style>
                        .a{
                            margin-bottom:10px;
                        }
                    </style>
                </div>
                <div>
                    <table>
				<tr>
                    <td class="q">
                        娱乐新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstyule" runat="server" OnItemCommand="dlstyule_ItemCommand"
                                Height="245px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="279px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    
                    </table>
                </div>
				
			</div>
			<div class="con-right">
					<div class="c">
                        <table>
				  <tr>
                      <td class="q">
                        时政新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstshizheng" runat="server" OnItemCommand="dlstshizheng_ItemCommand"
                                Height="244px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="286px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    </table>
                        <style type="text/css">
                            .c{
                                margin-bottom:10px;
                            }
                        </style>
					</div>
                    <div class="b">
                        <table>
				  <tr>
                      <td class="q">
                        社会新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstshehui" runat="server" OnItemCommand="dlstshehui_ItemCommand"
                                Height="244px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="286px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    </table>
                        <style type="text/css">
                            .b{
                                margin-bottom:10px;
                            }
                        </style>
					</div>
                    <div>
                        <table>
				  <tr>
                      <td class="q">
                        热点新闻
                    </td>
                        <td class="auto-style1">
                            <asp:DataList ID="dlstredian" runat="server" OnItemCommand="dlstredian_ItemCommand"
                                Height="245px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both" Width="286px">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "Title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 50px">
                                                <%#DataBinder.Eval(Container.DataItem, "Date")%></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                    
                    </table>
					</div>
			<style type="text/css">
				.content {
					height: 760px;
					padding-bottom: 20px;
				}

				.con-left,
				.con-right,
				.con-main {
					float: left;
					width: 300px;
				}

				.con-left {
					margin-left: 5px;
				}

				.con-right {
					margin-right: 5px;
				}

				.con-main {
					margin: 0 10px;

				}

				.con-left img {
					width: 288px;
					border: solid 1px #ccc;
					padding: 5px;
					border-radius: 10px;
				}

				.up a {
					font-size: 20px;
					font-family: 微软雅黑;
					color: deepskyblue;
					text-decoration: none;
				}

				.up a:hover {
					color: #990000;
					text-decoration: underline;
				}

				.up1 a {
					font-size: 22px;
					font-family: 微软雅黑;
					color: deepskyblue;
					text-decoration: none;
				}

				.up1 a:hover {
					color: #990000;
					text-decoration: underline;
				}

				.middle a {
					font-size: 15px;
					text-decoration: none;
					color: #000000;
				}

				.middle a:hover {
					color: #1E90FF;
					text-decoration: underline;
				}

				.m,
				.x {
					height: 240px;
					border: 1px solid darkgrey;
					margin-bottom: 10px;
					margin-top: 10px;
				}

				.s {
					height: 240px;
					border: 1px solid darkgrey;
					margin-bottom: 10px;
				}

				.un a {
					font-size: 14px;
					text-decoration: none;
					color: deepskyblue;
				}

				.un a:hover {
					color: #990000;
					text-decoration: underline;
				}

				.jj {
					line-height: 40px;
				}
			    .auto-style1 {
                    width: 292px;
                }
			    .auto-style2 {
                    float: left;
                    width: 300px;
                    height: 505px;
                    margin: 0 10px;
                }
			</style>
		</div>
            </div>
</asp:Content>

