using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using News_Releases.App_Code;

namespace News_Releases
{
    public partial class newsDetails : System.Web.UI.Page
    {
        public string title;
        public string html;
        public string categories;
        MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if(id != null)
            {
                IFactory factory = null;
                factory = new GetHtml();
                html = factory.GetInfo(id);
                factory = new GetTitle();
                title = factory.GetInfo(id);
                //conn.Open();
                //string sql = "select * from News where ID ='" + Request.QueryString["id"] + "'";
                //MySqlCommand com = new MySqlCommand(sql, conn);
                //MySqlDataReader reader = com.ExecuteReader();
                //while (reader.Read())
                //{
                //    title = reader[2].ToString();
                //    html = reader[3].ToString();
                //}
            }
            else if(Request.QueryString["categories"] != null)
            {
                string str = Request.QueryString["categories"].ToString();
                conn.Open();
                string sql = "select * from News where Categories = "+str+" order by ID desc limit 1";
                MySqlCommand com = new MySqlCommand(sql, conn);
                MySqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    title = reader[2].ToString();
                    html = reader[3].ToString();
                }
            }
        }
    }
}