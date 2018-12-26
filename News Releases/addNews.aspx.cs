using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Releases
{
    public partial class addNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserName"] == null)
            //{
            //    Response.Write("<script language='javascript'>alert('您还没有登陆!');this.location.href='Login.aspx';</SCRIPT>");
            //}
            text.Text = "";
            
        }
        

        [System.Web.Services.WebMethod]
        public static string RequestMethod(string msg,string categories,string title)
        {
            string html = msg;
            string Categories = categories;
            string Title = title;
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=030055lkz;database=NEWS;charset=utf8");
            if(html != "" && Categories != "" && Title != "")
            {
                try
                {
                    conn.Open();
                    string sqlstring = "insert into News (Categories,Title,Content,Date) values('" + Categories + "','" + Title + "','" + html + "',now())";
                    MySqlCommand com = new MySqlCommand(sqlstring, conn);
                    com.ExecuteScalar();
                }
                finally
                {
                    conn.Close();
                }
            }
            return html;
        }
    }
}