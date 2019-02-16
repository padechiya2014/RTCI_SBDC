using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RTCI_SBDC_2.Repository
{
    // Singleton class for Database connection.
    public sealed class RepositoryConnection
    {
        static RepositoryConnection sqlinstance = null;

        private readonly SqlConnection con;
        
        RepositoryConnection()
        {
            string constr = ConfigurationManager.ConnectionStrings["RTCIDbContext"].ToString();
            con = new SqlConnection(constr);
        }

        public static SqlConnection Instance
        {
            get
            {
                if (sqlinstance == null)
                {
                    sqlinstance = new RepositoryConnection();
                }
                return sqlinstance.con;
            }
        }
    }
}