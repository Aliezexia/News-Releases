using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public abstract class AccessLogin
    {
        public abstract int login(string username, string userpw);
    }
}