using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_SCHOOL_MANAGEMENT_SITE
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            TxtOgrFoto.Text = nid.ToString();
        }
    }
}