using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace News_Releases
{
    public partial class NewsManage : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=030055lkz;database=NEWS;charset=utf8");
        public static int number;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if(Session["UserName"].ToString() == "admin")
                {
                    if (!IsPostBack)
                    {
                        number = 0;
                        int n = Convert.ToInt32(Request.QueryString["id"]);
                        this.ddlNewsCategories.SelectedIndex = (n - 1);
                        this.bind();
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('您不是管理员!');this.location.href='Message.aspx';</SCRIPT>");
                }
            }
            else if(Session["UserName"] == null)
            {
                Response.Write("<script language='javascript'>alert('您还没有登陆!');this.location.href='Login.aspx';</SCRIPT>");
            }
            
        }
        public void bind()
        {
            conn.Open();
            string sql = "select * from News where Categories='" + this.ddlNewsCategories.SelectedValue.Trim() + "' order by ID";
            MySqlDataAdapter da = new MySqlDataAdapter(sql, conn);
            DataSet dataset = new DataSet();
            da.Fill(dataset,"News");
            this.gridNews.DataSource = dataset;
            this.gridNews.DataKeyNames = new string[] { "id" };
            this.gridNews.DataBind();
            conn.Close();
        }
        protected void SelectBind()
        {
            conn.Open();
            string sqlstring = "select * from News where Categories='" + this.ddlNewsCategories.SelectedValue.ToString() + "'";
            sqlstring += " and (( Content like '%" + this.txtKey.Text + "%')";
            sqlstring += " or (Title like '%" + this.txtKey.Text + "%'))";
            MySqlDataAdapter da = new MySqlDataAdapter(sqlstring, conn);
            DataSet dataset = new DataSet();
            da.Fill(dataset, "News");
            gridNews.DataSource = dataset;
            gridNews.DataKeyNames = new string[] { "id" };
            gridNews.DataBind();

        }
        protected void gvdNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            conn.Open();
            string sql = "delete from News where ID='" + this.gridNews.DataKeys[e.RowIndex].Value.ToString() + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteScalar();
            conn.Close();
            if (number == 1)
            {
                this.SelectBind();
            }
            else
            {
                bind();
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            number = 1;
            this.SelectBind();

        }
        protected void gvdNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridNews.PageIndex = e.NewPageIndex;
            if (number == 1)
            {
                this.SelectBind();
            }
            else
            {
                bind();
            }
        }
        protected void gvdNews_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
            }
        }

        protected void btn_clear(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("Message.aspx");
        }
    }
}