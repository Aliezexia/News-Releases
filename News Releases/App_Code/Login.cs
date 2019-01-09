using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class Login : AccessLogin
    {
        public override int login(string username, string userpw)
        {
            MySqlConnection conn = new MySqlConnection("server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8");
            conn.Open();
            string command = "select count(*) from userinfo where name = '" + username + "' and pw = '" + userpw + "'";
            MySqlCommand cmd = new MySqlCommand(command, conn);
            if (Convert.ToInt32(cmd.ExecuteScalar()) != 0)
            {
                conn.Close();
                return 1;
            }
            else
                return 0;
        }
    }
}