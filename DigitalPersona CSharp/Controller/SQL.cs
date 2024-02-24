using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;

namespace DigitalPersona_CSharp.Controller
{
    public class SQL
    {

        static readonly string DatabaseServer = Properties.Settings.Default.DatabaseServer;
        static readonly string MySQLPort = Properties.Settings.Default.MySQLPort;
        static readonly string Database = Properties.Settings.Default.Database;
        static readonly string UserID = Properties.Settings.Default.UserID;
        static readonly string Password = Properties.Settings.Default.Password;


      public  static readonly string ConnectionString = "Server=" + DatabaseServer + ";Port=" + MySQLPort + ";Database=" + Database + ";user id=" + UserID + ";password=" + Password + " ; Connection Reset=true; SslMode=None; AllowPublicKeyRetrieval=True; Convert Zero Datetime=True";


        public static bool IsConnected()
        {
            bool ret;
            MySqlConnection cnnDBConnection = new MySqlConnection(ConnectionString);
            try
            {
                cnnDBConnection.Open();
                ret = true;
            }
            catch
            {
                ret = false;
            }
            return ret;
        }
        public static void Push(string SQLStatement)
        {
            if (IsConnected())
            {
                MySqlConnection xSqlConnection = new MySqlConnection(ConnectionString);
                MySqlCommand cmd = new MySqlCommand
                {
                    CommandType = CommandType.Text,
                    CommandText = SQLStatement,
                    Connection = xSqlConnection
                };
                xSqlConnection.Open();
                cmd.ExecuteNonQuery();
                xSqlConnection.Close();
                cmd.Dispose();
            }



        }
        public static DataTable Pull(string SQLStatement)
        {
            DataTable dx= null;
            if (IsConnected())
            {
                using (MySqlConnection SQLConn = new MySqlConnection(ConnectionString))
                {
                    MySqlDataAdapter SqlDA = new MySqlDataAdapter();
                    DataTable d = new DataTable();
                    SQLConn.Open();
                    try
                    {
                        SqlDA.SelectCommand = new MySqlCommand(SQLStatement, SQLConn);
                        SqlDA.Fill(d);
                    }
                    catch { }
                    SQLConn.Close();
                    SqlDA.Dispose();
                    d.Dispose();
                    dx= d;
                }
            }
            return dx;
        }
        public static int GetCount(string SQLStatement)
        {
            MySqlConnection SQLConn = new MySqlConnection(ConnectionString);
            MySqlDataAdapter SqlDA = new MySqlDataAdapter();
            DataSet myDataSet = new DataSet();
            SQLConn.Open();
            try
            {
                SqlDA.SelectCommand = new MySqlCommand(SQLStatement, SQLConn);
                SqlDA.Fill(myDataSet);
            }
            catch { }
            SQLConn.Close();
            SqlDA.Dispose();
            myDataSet.Dispose();
            return myDataSet.Tables[0].Rows.Count;
        }


    }
}
