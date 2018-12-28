<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="addNews.aspx.cs" Inherits="News_Releases.addNews" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
    </script>
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
                    <a href="NewsManage.aspx">管理新闻</a>
                </div>
                <style type="text/css">
                    body {
					background: url(/images/2.jpg);
                    background-size:100%;
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
                </style>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td style="width: 120px; height: 30px; text-align: right;">选择新闻类别：
                        </td>
                        <td>
                            <asp:DropDownList ID="dlstNewsType" runat="server" AutoPostBack="False" Width="200px">
                                <asp:ListItem>国际新闻</asp:ListItem>
                                <asp:ListItem>娱乐新闻</asp:ListItem>
                                <asp:ListItem>热点新闻</asp:ListItem>
                                <asp:ListItem>时政新闻</asp:ListItem>
                                <asp:ListItem>经济新闻</asp:ListItem>
                                <asp:ListItem>社会新闻</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 120px; height: 30px; text-align: right;">填写标题：
                        </td>
                        <td>
                            <asp:TextBox ID="text" runat="server" Wrap="False"></asp:TextBox>
                        </td>
                        <td id="p">&emsp;&emsp;字数限制为50字以内</td>
                    </tr>

                </table>
                <style type="text/css">
                    .content {
                        margin-top: 1px;
                    }

                    #p {
                        font-size: 10px;
                    }
                </style>
            </div>
            <div class="auto-style1">
                <!-- 加载编辑器的容器 -->
                <script id="container" type="text/plain">
                新闻内容
                </script>
                <!-- 配置文件 -->
                <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
                <!-- 编辑器源码文件 -->
                <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.js"></script>

                <script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>

                <!-- 实例化编辑器 -->

                <script id="editor" type="text/plain" style="width: 99.95%; height: 700px"> </script>

                <!--隐藏控件为编辑器赋值用-->
                <asp:HiddenField ID="hide_Content" Value="" runat="server" />
                <button id="btn_Add">提交</button>
                <style>
                    #btn_Add {
                        margin-left: 600px;
                        height: 40px;
                        width: 90px;
                        font-size: 19px;
                        font-family: KaiTi;
                        font-weight: 700;
                    }

                        #btn_Add:hover {
                            opacity: 0.4;
                        }
                </style>
                <!--点击增加输出到这里-->
                <asp:Literal ID="ltMsg" runat="server"></asp:Literal>
                <!-- 实例化编辑器 -->
                <script type="text/javascript">
                    var htmlContent = document.getElementById("<%=this.hide_Content.ClientID%>").value;
                    var ue = UE.getEditor('editor', {
                        toolbars: [
                            ['undo', 'redo', '|',
                                'bold', 'forecolor', 'removeformat', 'autotypeset', 'pasteplain', '|', '|',
                                'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
                                'link', 'unlink', '|',
                                'simpleupload', 'insertimage', '|',
                                'wordimage', '|',
                                'insertvideo', '|',
                                'inserttable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'splittocells']
                        ],
                        allowDivTransToP: false,     //阻止复制的div标签自动转换为p标签
                        elementPathEnabled: false  //组织显示元素路径
                    });
                    //正确的初始化方式
                    //ue.ready(function () {
                    //    //this是当前创建的编辑器实例
                    //    this.setContent(htmlContent)
                    //})
                    $("#btn_Add").click(function () {
                        var msg = UE.getEditor('editor').getContent();
                        var categories = document.getElementById('dlstNewsType').value;
                        var title = document.getElementById('text').value;
                        document.getElementById("<%=hide_Content.ClientID %>").value = msg;
                        $.ajax({
                            type: 'post',
                            url: 'addNews.aspx/RequestMethod',
                            async: true,
                            contentType: "application/json;charset=utf-8",
                            data: "{'msg':'" + msg + "','categories':'" + categories + "','title':'" + title + "'}",
                            //data: "{'msg':'"+msg+"'}",
                            dataType: "json",
                            success: function (result) {
                                //var data = JSON.stringify(result);
                                //alert(data);
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    });
                </script>
            </div>
            <style type="text/css">
                #editor {
                    margin-top: 1px;
                }
                .auto-style1 {
                    width: 70%;
                    margin-left: auto;
                    margin-right: auto;
                    margin-top: 1px;
                    margin-bottom: 0;
                    background: #fff;
                }
            </style>
        </div>
    </form>
</body>
</html>
