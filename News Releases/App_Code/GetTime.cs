using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class GetTime:IFactory
    {
        public string GetInfo(string id)
        {
            string time = null;
            string sql = "select * from News where ID ='" + id + "'";
            DB_Singleton dB_Singleton = DB_Singleton.getInstance();
            dB_Singleton.setSql(sql);
            MySqlCommand cmd = dB_Singleton.getCommand();
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                time = reader[4].ToString();
            }
            return time;
        }
    }
}