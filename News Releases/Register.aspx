<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="News_Releases.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <style>
        form {
            color: #575454;
            width: 500px;
            margin-left: 600px;
            font-size: 15px;
            margin-top: 150px;
        }

        #spanpsd {
            margin-left: 125px;
        }

        #spanuser {
            margin-left: 110px;
        }

        div {
            margin: 30px auto;
            align-content: center;
        }

        .textbox {
            border: solid 1px;
            background: rgba(0, 0, 0, 0);
        }

        #LinkButton1 {
            text-decoration: none;
            color: lightblue;
            margin-left: 230px;
        }

        #Button1 {
            border-radius: 2px;
            border: solid 1px;
            background-color: transparent;
            margin-left: 150px;
            margin-top: 10px;
        }

        body {
            background-image: url("/images/6.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }

        .headline {
            font-size: 22px;
            text-align: center;
            padding: 20px;
        }

        .sideright {
            width: 450px;
            height: 400px;
            background-color: rgba(255, 255, 255, 0.75);
            margin: 50px 90px;
        }

        .container {
            width: 1200px;
            height: 870px;
            margin: 0 auto;
            /* 	background: #ccc; */
        }

        .nav {
            margin-top: 10px;
            height: 50px;
            line-height: 50px;
        }

            .nav ul li {
                float: right;
                font-size: 15px;
                list-style: none
            }

                .nav ul li a {
                    text-decoration: none;
                    color: #152b3c;
                    padding: 15px 30px;
                    list-style: none
                }

                    .nav ul li a:hover {
                        border: 1px solid white;
                        border-radius: 5%;
                        color: white;
                        list-style: none
                    }

        #spanuser {
            margin-left: 70px;
        }

        #spanpsd {
            margin-left: 72px;
        }

        #spanpsd2 {
            margin-left: 55px;
        }

        #Button1 {
            margin-left: 140px;
        }

        #LinkButton1 {
            margin-left: 180px;
            color: forestgreen;
        }
    </style>
</head>
<body>
    <!-- 导航 -->
    <div class="container">
        <div class="nav">
            <ul>
                <li><a href="">新浪</a></li>
                <li><a href="">微信</a></li>
                <li><a href="">关于我们</a></li>
                <li><a href="Message.aspx">首页</a></li>
            </ul>
        </div>

        <form id="form1" runat="server">
            <div class="sideright">
                <p class="headline">用户注册</p>
                <div>
                    <span id="spanuser">用户名:</span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
                </div>

                <div>
                    <span id="spanpsd">&nbsp;密码:&nbsp;&nbsp;</span>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
                </div>

                <div>
                    <span id="spanpsd2">确认密码:</span>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
                </div>

                <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">已有账号，登录</asp:LinkButton>
                    <asp:Button ID="Button1" runat="server" Text="注 册" Width="200px" Height="40px" OnClick="Button1_Click" />
                </div>
            </div>

        </form>
    </div>
</body>
</html>
