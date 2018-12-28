using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace News_Releases
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("server=47.106.146.81;user id=root;password=030055lkz;database=NEWS;charset=utf8");
            //从TextBox中获取用户输入信息
            string LoginName = TextBox1.Text.Trim();
            string LoginPassword = TextBox2.Text.Trim();
            if(LoginName == "" || LoginPassword == "")
            {
                Response.Write("<script>alert('用户名和密码不能为空')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            else
            {
                try
                {
                    con.Open();
                    string command = "select count(*) from userinfo where name = '" + LoginName + "' and pw = '" + LoginPassword + "'";
                    MySqlCommand cmd = new MySqlCommand(command, con);
                    if (Convert.ToInt32(cmd.ExecuteScalar()) > 0)
                    {
                        Session["UserName"] = TextBox1.Text;
                        FormsAuthentication.RedirectFromLoginPage(LoginName, false);
                    }
                    else
                    {
                        Response.Write("<script>alert('用户名或密码错误')</script>");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                    }
                }
                catch
                {
                    Response.Write("<script>alert('登录异常')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }

                finally
                {
                    con.Close();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}