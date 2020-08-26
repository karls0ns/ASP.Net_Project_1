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
    public partial class Mod : System.Web.UI.Page
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
                    ListMod.DataValueField = "ID";
                    ListMod.DataTextField = "VardsUzvards";
                    ListMod.DataSource = ds;
                    ListMod.DataBind();
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

        protected void ListMod_SelectedIndexChanged(object sender, EventArgs e)
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

                string sql = "select * from skolnieki " +
                             "where ID = '" + ListMod.SelectedValue + "'";
                OracleCommand cmd = new OracleCommand(sql, con);
                cmd.CommandType = CommandType.Text;

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                OracleCommandBuilder cb = new OracleCommandBuilder(da);
                DataSet ds = new DataSet();

                da.Fill(ds);
                con.Close();

                TextModVards.Text = ds.Tables[0].Rows[0]["Vards"].ToString();
                TextModUzvards.Text = ds.Tables[0].Rows[0]["Uzvards"].ToString();
                DropModAtzime_1.SelectedValue = ds.Tables[0].Rows[0]["Atzime_1"].ToString();
                DropModAtzime_2.SelectedValue = ds.Tables[0].Rows[0]["Atzime_2"].ToString();
                DropModAtzime_3.SelectedValue = ds.Tables[0].Rows[0]["Atzime_3"].ToString();
            }
            catch
            {
                Response.Write("<script>alert('Savienojums ar datu bāzi nav izveidots!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
            }
        }

        protected void BtnModSubmit_Click(object sender, EventArgs e)
        {
            if (ListMod.SelectedIndex != -1)
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



                    string sql = "update skolnieki " +
                                 "Set VARDS = :1," +
                                     "UZVARDS = :2," +
                                     "ATZIME_1 = :3," +
                                     "ATZIME_2 = :4," +
                                     "ATZIME_3 = :5" +
                                     "where ID = '" + ListMod.SelectedValue + "'";

                    OracleCommand cmd = new OracleCommand(sql, con);

                    cmd.Connection = con;
                    cmd.CommandText = sql;

                    cmd.Parameters.Add(new OracleParameter("1", OracleDbType.Varchar2, TextModVards.Text, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("2", OracleDbType.Varchar2, TextModUzvards.Text, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("3", OracleDbType.Decimal, DropModAtzime_1.SelectedValue, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("4", OracleDbType.Decimal, DropModAtzime_2.SelectedValue, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("5", OracleDbType.Decimal, DropModAtzime_3.SelectedValue, ParameterDirection.Input));

                    cmd.ExecuteNonQuery();

                    TextModVards.Text = "";
                    TextModUzvards.Text = "";
                    DropModAtzime_1.SelectedValue = "-1";
                    DropModAtzime_2.SelectedValue = "-1";
                    DropModAtzime_3.SelectedValue = "-1";


                    sql = "select * from skolnieki";
                    cmd = new OracleCommand(sql, con);
                    cmd.CommandType = CommandType.Text;

                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    OracleCommandBuilder cb = new OracleCommandBuilder(da);
                    DataSet ds = new DataSet();

                    da.Fill(ds);
                    ds.Tables[0].Columns.Add("VardsUzvards", typeof(string), "Vards + ' ' + Uzvards");
                    ListMod.DataValueField = "ID";
                    ListMod.DataTextField = "VardsUzvards";
                    ListMod.DataSource = ds;
                    ListMod.DataBind();
                    con.Close();

                    Response.Write("<script>alert('Datu labošana notikusi veiksmīgi!');</script>");
                }
                catch
                {
                    Response.Write("<script>alert('Datu labošana nav notikusi!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Nav izvēlēts ieraksts, kuru labot!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
            }
        }
    }
}