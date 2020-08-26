using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace LD2
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection();

            string connectionString = "Data Source = (DESCRIPTION = " +
                                      "(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))" +
                                      "(CONNECT_DATA =" + //192.168.0.126
                                      "(SERVER = DEDICATED)" +
                                      "(SERVICE_NAME =ASPnet)" +
                                      ")" +
                                      ");User Id =system;password=aspnet;";
            con.ConnectionString = connectionString;

            try
            {
                con.Open();

                string sql = "select vards as \"Vārds\", uzvards as \"Uzvārds\", atzime_1 as \"Atzīme 1\"," +
                 "atzime_2 as \"Atzīme 2\", atzime_3 as \"Atzīme 3\" from skolnieki";
                OracleCommand cmd = new OracleCommand(sql, con);
                cmd.CommandType = CommandType.Text;

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                OracleCommandBuilder cb = new OracleCommandBuilder(da);
                DataSet ds = new DataSet();

                da.Fill(ds);

                tbDati.DataSource = ds.Tables[0];
                tbDati.DataBind();
                con.Close();
            }
            catch
            {                                
                Response.Write("<script>alert('Savienojums ar datu bāzi nav izveidots!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');" +
                               "window.location = '/Main.aspx';</script>");                               
            }
        }

        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Main.aspx");                            
        }
    }
}