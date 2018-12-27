using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Releases
{
    public partial class newsDetails : System.Web.UI.Page
    {
        public string title;
        public string html;
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
            conn.Open();
            string sql = "select * from News where ID ='" + Request.QueryString["id"] + "'";
            MySqlCommand com = new MySqlCommand(sql, conn);
            MySqlDataReader reader = com.ExecuteReader();
            while(reader.Read())
            {
                title = reader[2].ToString();
                html = reader[3].ToString();
             }
        }
    }
}