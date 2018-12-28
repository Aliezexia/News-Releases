using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;

namespace News_Releases
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=030055lkz;database=NEWS;charset=utf8");
            string[] str = { "国际新闻", "经济新闻", "娱乐新闻", "时政新闻", "社会新闻", "热点新闻" };
            string[] str_id = { "dlstguoji", "dlstjingji", "dlstyule", "dlstshizheng", "dlstshehui", "dlstredian" };
            for (int i = 0; i <= 5; i++)
            {
                conn.Open();
                string sql = "select * from News where Categories='" + str[i] + "' order by ID desc limit 5";
                MySqlCommand com = new MySqlCommand(sql, conn);
                MySqlDataReader reader = com.ExecuteReader();
                DataList dl = (DataList)Master.FindControl("ContentPlaceHolder1").FindControl(str_id[i]);
                dl.DataSource = reader;
                dl.DataKeyField = "ID";
                dl.DataBind();
                conn.Close();
            }
        }

        protected void dlstguoji_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstguoji.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }

        protected void dlstjingji_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstjingji.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }

        protected void dlstyule_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstyule.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }

        protected void dlstshizheng_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstshizheng.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }

        protected void dlstshehui_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstshehui.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }

        protected void dlstredian_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(this.dlstredian.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("newsDetail.aspx?id=" + id);
        }
    }
}