﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class GetTitle:IFactory
    {
        public string GetInfo(string id)
        {
            string title = null;
            string sql = "select * from News where ID ='" + id + "'";
            DB_Singleton dB_Singleton = DB_Singleton.getInstance();
            dB_Singleton.setSql(sql);
            MySqlCommand cmd = dB_Singleton.getCommand();
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                title = reader[2].ToString();
            }
            return title;
        }
    }
}