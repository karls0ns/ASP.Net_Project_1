using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LD2
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add.aspx");
        }

        protected void BtnMod_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mod.aspx");
        }

        protected void BtnDel_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Del.aspx");
        }

        protected void BtnData_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Data.aspx");
        }

        protected void BtnBest_main_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Best.aspx");
        }
    }
}