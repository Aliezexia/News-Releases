using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class Adapter : AccessRegister
    {
        private AccessLogin login;
        public Adapter(AccessLogin login)
        {
            this.login = login;
        }
        public void Register(string username, string userpw)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
            conn.Open();
            string command = "select count(*) from userinfo where name = '" + username + "'";
            string sqlstring = "insert into userinfo (name,pw) values('" + username.Trim() + "','" + userpw.Trim() + "')";
            MySqlCommand cmd = new MySqlCommand(command, conn);
            MySqlCommand com = new MySqlCommand(sqlstring, conn);
            if (Convert.ToInt32(cmd.ExecuteScalar()) == 0)
            {
                com.ExecuteScalar();
            }
            conn.Close();
        }
        public void Login(string username, string userpw)
        {
            login.login(username, userpw);
        }
    }
}