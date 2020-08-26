using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace LD2
{
    public partial class Del : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

                    string sql = "select * from skolnieki";
                    OracleCommand cmd = new OracleCommand(sql, con);
                    cmd.CommandType = CommandType.Text;

                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    OracleCommandBuilder cb = new OracleCommandBuilder(da);
                    DataSet ds = new DataSet();

                    da.Fill(ds);
                    ds.Tables[0].Columns.Add("VardsUzvards", typeof(string), "Vards + ' ' + Uzvards");
                    ListDel.DataValueField = "ID";
                    ListDel.DataTextField = "VardsUzvards";
                    ListDel.DataSource = ds;
                    ListDel.DataBind();
                    con.Close();
                }
                catch
                {
                    Response.Write("<script>alert('Savienojums ar datu bāzi nav izveidots!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');" +
                                   "window.location = '/Main.aspx';</script>");
                }
                
            }
        }

        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Main.aspx");
        }

        protected void BtnDelSubmit_Click(object sender, EventArgs e)
        {
            if (ListDel.SelectedIndex != -1)
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

                    string sql = "Delete from Skolnieki where ID = '" + ListDel.SelectedValue + "'";

                    OracleCommand cmd = new OracleCommand(sql, con);

                    cmd.Connection = con;
                    cmd.CommandText = sql;
                    cmd.ExecuteNonQuery();
                    con.Close();

                    ListDel.Items.Remove(ListDel.SelectedItem);
                    TextDelVards.Text = "";
                    TextDelUzvards.Text = "";
                    TextDelAtzime_1.Text = "";
                    TextDelAtzime_2.Text = "";
                    TextDelAtzime_3.Text = "";
                    Response.Write("<script>alert('Ieraksts izdzēsts!');</script>");

                }
                catch
                {
                    Response.Write("<script>alert('Ieraksta izdzēšana nav veikta!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Nav izvēlēts ieraksts, kuru izdzēst!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
            }

        }

        protected void ListDel_SelectedIndexChanged(object sender, EventArgs e)
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

                string sql = "select * from skolnieki "+
                             "where ID = '"+ListDel.SelectedValue+"'";
                OracleCommand cmd = new OracleCommand(sql, con);
                cmd.CommandType = CommandType.Text;

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                OracleCommandBuilder cb = new OracleCommandBuilder(da);
                DataSet ds = new DataSet();

                da.Fill(ds);            
                con.Close();

                TextDelVards.Text = ds.Tables[0].Rows[0]["Vards"].ToString();
                TextDelUzvards.Text = ds.Tables[0].Rows[0]["Uzvards"].ToString();
                TextDelAtzime_1.Text = ds.Tables[0].Rows[0]["Atzime_1"].ToString();
                TextDelAtzime_2.Text = ds.Tables[0].Rows[0]["Atzime_2"].ToString();
                TextDelAtzime_3.Text = ds.Tables[0].Rows[0]["Atzime_3"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('Savienojums ar datu bāzi nav izveidots!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
            }            
        }
    }
}