using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace RTCI_SBDC_2.Repository
{
    public class RTICRepository
    {
        //private SqlConnection con;
        ////To Handle connection related activities    
        //private void connection()
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["RTCIDbContext"].ToString();
        //    con = new SqlConnection(constr);
        //}

        //To Add Client details    
        public bool AddClient(ClientInformation clientInfo)
        {
            try
            {
                //connection();
                SqlCommand com = new SqlCommand("AddNewClientDetails", RepositoryConnection.Instance);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@FirstName", clientInfo.FirstName);
                com.Parameters.AddWithValue("@LastName", clientInfo.LastName);
                com.Parameters.AddWithValue("@BusinessName", clientInfo.BusinessName);
                com.Parameters.AddWithValue("@HasBusinessName", clientInfo.HasBusinessName);
                com.Parameters.AddWithValue("@Address1", clientInfo.Address1);
                com.Parameters.AddWithValue("@Address2", clientInfo.Address2 ?? "");
                com.Parameters.AddWithValue("@City", clientInfo.City);
                com.Parameters.AddWithValue("@State", clientInfo.State);
                com.Parameters.AddWithValue("@Zip", clientInfo.Zip);
                com.Parameters.AddWithValue("@Country", clientInfo.Country ?? "");
                com.Parameters.AddWithValue("@Email", clientInfo.Email);
                com.Parameters.AddWithValue("@Phone", clientInfo.Phone);
                com.Parameters.AddWithValue("@PhoneType", clientInfo.PhoneType);
                com.Parameters.AddWithValue("@BestContactMethod", clientInfo.BestContactMethod ?? "");
                com.Parameters.AddWithValue("@BestTimeForContact", clientInfo.BestTimeForContact ?? "");


                // Business Information
                com.Parameters.AddWithValue("@CurrentlyInBusiness", clientInfo.CurrentlyInBusiness);
                com.Parameters.AddWithValue("@IsHomeBased", clientInfo.IsHomeBased);
                com.Parameters.AddWithValue("@Gender", clientInfo.Gender);
                com.Parameters.AddWithValue("@Race", clientInfo.Race);
                com.Parameters.AddWithValue("@VeteranStatus", clientInfo.VeteranStatus);
                com.Parameters.AddWithValue("@BusinessStatus", clientInfo.BusinessStatus);
                com.Parameters.AddWithValue("@SBAClient", clientInfo.SBAClient);
                com.Parameters.AddWithValue("@Export", clientInfo.Export);
                com.Parameters.AddWithValue("@BusinessType", clientInfo.BusinessType);
                com.Parameters.AddWithValue("@CounsellingType", clientInfo.CounsellingType);
                com.Parameters.AddWithValue("@DescribeBusiness", clientInfo.DescribeBusiness ?? "");
                com.Parameters.AddWithValue("@WebAddress", clientInfo.WebAddress ?? "");
                com.Parameters.AddWithValue("@RequestForCounsellingInfo", clientInfo.RequestForCounsellingInfo ?? "");


                RepositoryConnection.Instance.Open();
                int i = com.ExecuteNonQuery();
                RepositoryConnection.Instance.Close();
                if (i >= 1)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                if (RepositoryConnection.Instance.State == ConnectionState.Open)
                {
                    RepositoryConnection.Instance.Close();
                }
            }
            return false;

        }

        //To view employee details with generic list     
        public List<ClientInformation> GetAllClients()
        {

            //connection();
            List<ClientInformation> ClientList = new List<ClientInformation>();

            SqlCommand com = new SqlCommand("GetClients", RepositoryConnection.Instance)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();

            RepositoryConnection.Instance.Open();
            da.Fill(dt);
            RepositoryConnection.Instance.Close();
            //Bind EmpModel generic list using dataRow     
            foreach (DataRow dr in dt.Rows)
            {

                ClientList.Add(

                    new ClientInformation
                    {

                        ID = Convert.ToInt32(dr["Id"]),
                        FirstName = Convert.ToString(dr["FirstName"]),
                        LastName = Convert.ToString(dr["LastName"]),
                        BusinessName = Convert.ToString(dr["BusinessName"]),
                        Address1 = Convert.ToString(dr["Address1"]),
                        Address2 = Convert.ToString(dr["Address2"]),
                        City = Convert.ToString(dr["City"]),
                        State = Convert.ToString(dr["State"]),
                        Zip = Convert.ToString(dr["Zip"]),
                        Country = Convert.ToString(dr["Country"]),
                        Email = Convert.ToString(dr["Email"]),
                        Phone = Convert.ToString(dr["Phone"]),
                        BestContactMethod = Convert.ToString(dr["BestContactMethod"]),
                        CurrentlyInBusiness = Convert.ToString(dr["CurrentlyInBusiness"]),
                        IsHomeBased = Convert.ToString(dr["IsHomeBased"]),
                        Gender = Convert.ToString(dr["Gender"]),
                        Race = Convert.ToString(dr["Race"]),
                        VeteranStatus = Convert.ToString(dr["VeteranStatus"]),
                        BusinessStatus = Convert.ToString(dr["BusinessStatus"]),
                        SBAClient = Convert.ToString(dr["SBAClient"]),
                        Export = Convert.ToString(dr["Export"]),
                        BusinessType = Convert.ToString(dr["BusinessType"]),
                        CounsellingType = Convert.ToString(dr["CounsellingType"]),
                        DescribeBusiness = Convert.ToString(dr["DescribeBusiness"]),
                        WebAddress = Convert.ToString(dr["WebAddress"]),
                        RequestForCounsellingInfo = Convert.ToString(dr["RequestForCounsellingInfo"])
                    }


                    );
            }

            return ClientList;
        }
    }
}