using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FinalProj.Data
{
    public class DBConnection
    {
        private static String connectionString = "Data Source=bais-mssql.database.windows.net;Initial Catalog=msci3120;Persist Security Info=True;User ID=msci3120-mgr;Password=SaeBr3sDmLFJargq557DBDRT42wq38bqCutCMZroBqw";

        public static void ExecuteSelectQuery(string query, ref DataTable dt)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.Fill(dt);
            con.Close();
        }

        public static void ExecuteInsertQuery(string query)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        internal static void ExecuteSelectQuery(object p, ref DataTable dt)
        {
            throw new NotImplementedException();
        }

    }
}