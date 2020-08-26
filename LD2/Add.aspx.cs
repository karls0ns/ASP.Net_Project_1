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
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {           
            Response.Redirect("~/Main.aspx");
        }

        protected void BtnAddSubmit_Click(object sender, EventArgs e)
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

            if (Page.IsValid)
            {
                try
                {
                    con.Open();



                    string sql = "insert into skolnieki(VARDS,UZVARDS,ATZIME_1,ATZIME_2,ATZIME_3) " +
                                      "values(:1, :2, :3, :4, :5)";

                    OracleCommand cmd = new OracleCommand(sql, con);

                    cmd.Connection = con;
                    cmd.CommandText = sql;

                    cmd.Parameters.Add(new OracleParameter("1", OracleDbType.Varchar2, TextAddVards.Text, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("2", OracleDbType.Varchar2, TextAddUzvards.Text, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("3", OracleDbType.Decimal, DropAddAtzime_1.SelectedValue, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("4", OracleDbType.Decimal, DropAddAtzime_2.SelectedValue, ParameterDirection.Input));
                    cmd.Parameters.Add(new OracleParameter("5", OracleDbType.Decimal, DropAddAtzime_3.SelectedValue, ParameterDirection.Input));

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Ir saglabāti sekojoši dati:" + "\\n" +
                    "Vārds:      " + TextAddVards.Text + "\\n" +
                    "Uzvārds:  " + TextAddUzvards.Text + "\\n" +
                    "Atzīme 1: " + DropAddAtzime_1.SelectedValue + "\\n" +
                    "Atzīme 2: " + DropAddAtzime_2.SelectedValue + "\\n" +
                    "Atzīme 3: " + DropAddAtzime_3.SelectedValue + "');</script>");

                    TextAddVards.Text = "";
                    TextAddUzvards.Text = "";
                    DropAddAtzime_1.SelectedValue = "-1";
                    DropAddAtzime_2.SelectedValue = "-1";
                    DropAddAtzime_3.SelectedValue = "-1";
                }
                catch
                {
                    Response.Write("<script>alert('Savienojums ar datu bāzi nav izveidots!" + "\\n" + "Pēc neilga brīža mēģiniet vēlreiz!');</script>");
                }
            }
            else
            {

            }
        }
    }
}