using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Releases
{
    public partial class UpdateNews : System.Web.UI.Page
    {
        public string title;
        public string html;
        public string categories = "国际新闻";
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
            conn.Open();
            string sql = "select * from News where ID ='" + Request.QueryString["id"] + "'";
            MySqlCommand com = new MySqlCommand(sql, conn);
            MySqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                categories = reader[1].ToString();
                title = reader[2].ToString();
                html = reader[3].ToString();
            }
            text.Text = title;
            dlstNewsType.Items.FindByText(categories).Selected = true;
            hide_Content.Value = html;
            Session["ID"] = Request.QueryString["id"];
        }

        [System.Web.Services.WebMethod]
        public static string RequestMethod(string msg, string categories, string title, int id)
        {
            string html = msg;
            string Categories = categories;
            string Title = title;
            int ID = id;
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
            if (html != "" && Categories != "" && Title != "")
            {
                try
                {
                    conn.Open();
                    string sqlstring = "UPDATE News SET Categories = '" + Categories + "',Title = '" + Title +"',Content ='" + html + "'WHERE ID = '" + ID + "'";
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