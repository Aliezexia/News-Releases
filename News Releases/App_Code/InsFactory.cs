using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Releases.App_Code
{
    public class InsFactory
    {
        public static IFactory Factory(string str)
        {
            IFactory factory = null;
            if (str == "Content")
            {
                factory = new GetHtml();
            }
            else if(str == "title")
            {
                factory = new GetTitle();
            }
            else if (str == "time")
            {
                factory = new GetTime();
            }
            return factory;
        }
    }
}