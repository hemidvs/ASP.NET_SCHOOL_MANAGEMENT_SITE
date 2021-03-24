using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_SCHOOL_MANAGEMENT_SITE
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            TxtOgrId.Text = id.ToString();

            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
            TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
            TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
            TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
            TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
            TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTORAF;
        }
    }
}