using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace News_Releases
{
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=030055lkz;database=NEWS;charset=utf8");
            //从TextBox中获取用户输入信息
            string userName = TextBox1.Text.Trim();
            string userPassword = TextBox2.Text.Trim();
            string userPassword2 = TextBox3.Text.Trim();
            if (userName == "" || userPassword == "" || userPassword2 == "")
            {
                Response.Write("<script>alert('用户名和密码不能为空')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            else
            {
                if (userPassword == userPassword2)
                {
                    try
                    {
                        conn.Open();
                        string command = "select count(*) from userinfo where name = '" + userName + "'";
                        string sqlstring = "insert into userinfo (name,pw) values('" + userName.Trim() + "','" + userPassword.Trim() + "')";
                        MySqlCommand cmd = new MySqlCommand(command, conn);
                        MySqlCommand com = new MySqlCommand(sqlstring, conn);
                        if (Convert.ToInt32(cmd.ExecuteScalar()) > 0)
                        {
                            Response.Write("<script>alert('用户名已存在')</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                        }
                        else
                        {
                            com.ExecuteScalar();
                            Response.Write("<script language='javascript'>alert('您已经注册成功!');this.location.href='Message.aspx';</SCRIPT>");
                        }
                    }
                    catch
                    {
                        Response.Write("<script>alert('注册异常')</script>");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                    }

                    finally
                    {
                        conn.Close();
                    }
                }
                else
                {
                    Response.Write("<script>alert('两次密码不一致')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}