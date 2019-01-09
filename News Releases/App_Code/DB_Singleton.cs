using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class DB_Singleton
    {
        private string sql;
        private string str = "server=47.106.146.81;user id=root;password=;database=NEWS;charset=utf8";
        private MySqlConnection conn = null;
        public void setSql(string sql)
        {
            this.sql = sql;
        }
        public string getSql()
        {
            return sql;
        }
        private DB_Singleton()
        {
            
        }
        private static DB_Singleton instance = null;
        public static DB_Singleton getInstance()
        {
            if (instance == null)
            {
                instance = new DB_Singleton();
            }
            return instance;
        }
        public MySqlCommand getCommand()
        {
            conn = new MySqlConnection(str);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            return cmd;
        }
        public void close()
        {
            if (conn != null)
                conn.Close();
        }
    }
}